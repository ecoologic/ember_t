App.TasksController = Em.ArrayController.extend
  create: (params) ->
    @get('model').createRecord(name: params.name, description: params.description, createdAt: (new Date))
