# README
This small exercise uses

- **turbo-frame:** Single Page Application effect
- **stimulus:** render a list of projects on the search page.

to find a project. Two methods will be illustrated here.

- **method 1 (logic in the frontend):**
    - rails will retrieve all projects and pass it to the view.
    - the view will be responsible for filtering out the unwanted projects.
  
![Project-View](https://github.com/anthonybchung/hotwire_search/assets/99620815/fb2b5d3c-9ef5-425e-b738-be11cfe528bc)
  
- **method 2 (logic in the backend):**
  - each time the input changes, view will submit a request to the controller.
  - view will only render the list of projects that is passed to it from the controller.

![Project-BackEnd](https://github.com/anthonybchung/hotwire_search/assets/99620815/a5c666bd-7676-45f7-9484-d37c1d270b4d)

# Model.

Let's make a simple model.

No validation will be coded because this exercise is to demonstrate Rails erb using Hotwire.

| Project     |        |        |
|:------------|:-------|:-------|
| name        | string | unique |
| description | text   |        |
| category    | string |        |


Populate the table data from seeds.rb

# Method 1

Pass all the projects from the database to the view. 
```
def index
  @projects = Project.all
end
```

Then use stimulus to hide(ie "display:none") the unwanted data.

# Method 2
Pass the query search to the backend.

View: 

```erbruby
<%= form_with url: method2s_path, method: :get, data: { turbo_frame: "projects", controller: "method2" } do |form| %>
	<%= form.search_field :query, class: "border-2 border-violet-950 w-1/4", data: { action: "input->method2#search" } %>
<% end %>

<%= turbo_frame_tag "projects" do %>
	<% unless @projects.empty? %>
		<table class="m-5">
			<tr class="border-violet-950 border-2">
				<th class="border-violet-950 border-2">Name</th>
				<th class="border-violet-950 border-2">Description</th>
				<th class="border-violet-950 border-2">Category</th>
			</tr>


			<% @projects.each_with_index do |project, index| %>
				<%= render partial: 'method2s/project', locals: { project: project, index: index } %>
			<% end %>
		</table>
	<% else %>
		<p>No such Project</p>
	<% end %>
<% end %>
```

All the stimulus has to do is to submit the form as the input changes.

```javascript
 search(){
    this.element.requestSubmit()
  }
```

the business logic is placed in the backend.

```ruby
def index
    if params[:query].nil?
      @projects = Project.all
    else
      @projects = Project.where("LOWER(name) LIKE ?", "%#{params[:query].downcase}%")
    end
  end
```








