App.Task = DS.Model.extend
  name:        DS.attr('string')
  description: DS.attr('string')
  createdAt:   DS.attr('date')
  company:     DS.belongsTo('App.Company')
  project:     DS.belongsTo('App.Project')
  activities:  DS.hasMany('App.Activity')

  duration: (->
    # @get('activities.@each.duration')
    #   .toArray().reduce(((a, b) -> (a + b)), 0)
    # above not working ???
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
    company:     1
    project:     11
    id:          111
    activities:  [1111, 1112, 1113]
  }
  {
    name:        "Build a task 'manager'"
    description: "show and **create new**"
    createdAt:   AppDate.daysAgo(4)
    company:     1
    project:     12
    id:          121
    activities:  [1211, 1212]
  }
  {
    name:        "Project managment"
    description: "By **now** only with name and description, no edit"
    createdAt:   AppDate.daysAgo(4)
    company:     1
    project:     12
    id:          122
    activities:  [1221]
  }
]
