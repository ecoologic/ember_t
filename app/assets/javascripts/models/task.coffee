App.Task = DS.Model.extend
  name:        DS.attr('string')
  description: DS.attr('string')
  createdAt:   DS.attr('date')
  activities:  DS.hasMany('App.Activity')

  duration: (->
    sum = 0
    @get('activities').forEach (activity) ->
      sum += activity.get('duration')
    sum
  ).property('activities.@each.duration')

App.Task.FIXTURES = [
  {
    id:          0
    name:        "Please buy the Milk"
    description: "See if you can move your **big** fat _ass_ off the couch and grab some milk before I get this bat and I stick it in your mouth until it reaches the couch!"
    createdAt:   AppDate.daysAgo(3)
    activities:  [0, 1, 2]
  }
  {
    id:          1
    name:        "Build a task 'manager'"
    createdAt:   AppDate.daysAgo(4)
    description: "By **now** only with name and description, to be shown in its own route, only show action"
  }
]
