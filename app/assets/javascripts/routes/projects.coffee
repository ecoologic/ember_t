App.ProjectRoute = Em.Route.extend
  model: (params) -> App.Project.find(params.project_id)
