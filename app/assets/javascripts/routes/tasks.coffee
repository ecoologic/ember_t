App.TasksRoute = Ember.Route.extend
  model: -> App.Task.find()

App.TaskRoute = Ember.Route.extend
  model: (params)-> App.Task.find(params.task_id)
