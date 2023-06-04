# README
This small exercise uses

- **turbo-frame:** Single Page Application effect
- **stimulus:** render a list of projects on the search page.

to find a project. Two methods will be illustrated here.

- method 1 (logic in the frontend):
    - rails will retrieve all projects and pass it to the view.
    - the view will be responsible for filtering out the unwanted projects.
  
- method 2 (logic in the backend):
  - each time the input changes, view will submit a request to the controller.
  - view will only render the list of projects that is passed to it from the controller.

![Logic in View](https://github.com/anthonybchung/hotwire_search/assets/99620815/1274487d-bebe-4360-9286-4309bde8d35f)

