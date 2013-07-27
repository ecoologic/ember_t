App.ProjectsRoute = Em.Route.extend
  model: -> App.Project.find()

App.ProjectRoute = Em.Route.extend
  model: (params) -> App.Project.find(params.project_id)
