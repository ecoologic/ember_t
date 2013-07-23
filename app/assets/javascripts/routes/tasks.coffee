App.TasksRoute = Em.Route.extend
  model: -> App.Task.find()

App.TaskRoute = Em.Route.extend
  model: (params) -> App.Task.find(params.task_id)
