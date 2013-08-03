App.Project = DS.Model.extend
  name:        DS.attr('string')
  description: DS.attr('string')
  createdAt:   DS.attr('date')
  company:     DS.belongsTo('App.Company')
  tasks:       DS.hasMany('App.Task')
  # activities:  DS.hasMany('App.Activity') # useless

  duration: (->
    sum = 0
    @get('tasks').forEach (task) ->
      sum += task.get('duration')
    sum
  ).property('tasks.@each.duration')

App.Project.FIXTURES = [
  {
    name:        "Shopping"
    description: "**Important ones**, like grocery, this is not the place for your wishlist..."
    createdAt:   AppDate.daysAgo(4)
    company:     1
    id:          11
    tasks:       [111]
  }
  {
    name:        "Project Ember T"
    description: "Account - Users - *Projects* - Tasks - Activities"
    createdAt:   AppDate.daysAgo(10)
    company:     1
    id:          12
    tasks:       [121, 122]
  }
]
