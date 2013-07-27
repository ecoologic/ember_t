App.TasksController = Em.ArrayController.extend
  create: (params) ->
    # TODO: is this saving with the right foreign key??
    @get('model').createRecord(name: params.name, description: params.description, createdAt: (new Date))
