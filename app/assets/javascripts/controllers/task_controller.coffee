App.TaskController = Em.ObjectController.extend
  reverseActivities: (->
      @get('activities').toArray().reverse()
  ).property('activities.length')

  addActivity: (params) ->
    t = @get('model')
    as = t.get('activities')
    as.createRecord(description: params.description, duration: parseFloat(params.duration))
