App.ActivitiesController = Em.ArrayController.extend
  reverse: (->
      @get('model').toArray().reverse()
  ).property('length')

  create: (params) ->
    duration = parseFloat(params.duration)
    duration = 0 unless duration > 0
    # TODO: is this saving with the right foreign key??
    @get('model').createRecord(description: params.description, duration: duration, isQuestion: params.isQuestion, createdAt: (new Date))
