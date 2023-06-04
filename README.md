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
| Project | |
| --- | --- |
