App.ActivitiesController = Em.ArrayController.extend
  reverse: (->
    @get('model').toArray().reverse()
  ).property('length')
