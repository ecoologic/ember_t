App.ActivitiesController = Em.ArrayController.extend
  reverse: (->
      @get('model').toArray().reverse()
  ).property('length')

  addActivity: (params) ->
    duration = parseFloat(params.duration)
    duration = 0 unless duration > 0
    @get('model').createRecord(description: params.description, duration: duration, isQuestion: params.isQuestion, createdAt: (new Date))
