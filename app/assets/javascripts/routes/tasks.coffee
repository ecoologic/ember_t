App.TasksRoute = Em.Route.extend
  model: (params) ->
    # App.Task.find(project: params.project_id) # not implemented in FIXTURES 13
    App.Project.find(params.project_id).get('tasks')

App.TaskRoute = Em.Route.extend
  model: (params) ->
    App.Task.find(params.task_id)
