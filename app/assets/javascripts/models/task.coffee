App.Task = DS.Model.extend
  name:        DS.attr('string')
  description: DS.attr('string')
  createdAt:   DS.attr('date')
  project:     DS.belongsTo('App.Project')
  activities:  DS.hasMany('App.Activity')

  duration: (->
    sum = 0
    @get('activities').forEach (activity) ->
      sum += activity.get('duration')
    sum
  ).property('activities.@each.duration')

  lastActivityIsQuestion: (->
    activity = @get('activities.lastObject')
    activity.get('isQuestion') if activity?
  ).property('activities.lastObject.isQuestion')

App.Task.FIXTURES = [
  {
    name:        "Please buy the Milk"
    description: "See if you can move your **big** fat _ass_ off the couch and grab some milk before I get this bat and I stick it in your mouth until it reaches the couch!"
    createdAt:   AppDate.daysAgo(3)
    project:     1
    id:          11
    activities:  [111, 112, 113]
  }
  {
    name:        "Build a task 'manager'"
    description: "show and **create new**"
    createdAt:   AppDate.daysAgo(4)
    project:     2
    id:          21
    activities:  [211, 212]
  }
  {
    name:        "Project managment"
    description: "By **now** only with name and description, no edit"
    createdAt:   AppDate.daysAgo(4)
    project:     2
    id:          22
    activities:  [221]
  }
]
