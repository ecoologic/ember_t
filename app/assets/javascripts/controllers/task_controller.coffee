App.TaskController = Em.ObjectController.extend
  reverseActivities: (->
      @get('activities').toArray().reverse()
  ).property('activities.length')

  addActivity: (params) ->
    t = @get('model')
    as = t.get('activities')
    duration = parseFloat(params.duration)
    duration = 0 unless duration > 0
    as.createRecord(description: params.description, duration: duration, isQuestion: params.isQuestion)
