App.Activity = DS.Model.extend
  description: DS.attr('string')
  isQuestion:  DS.attr('boolean')
  duration:    DS.attr('number')
  createdAt:   DS.attr('date')
  task:        DS.belongsTo('App.Task')
  project:     DS.belongsTo('App.Project')

App.Activity.FIXTURES = [
  {
    description: "Went to the shop, got the **milk**, gave the money, came back and put it in the fridge"
    isQuestion:  false
    duration:    0.75
    createdAt:   AppDate.daysAgo(2)
    project:     1
    task:        11
    id:          111
  }
  {
    description: "I don't care, it's not there anymore"
    isQuestion:  false
    duration:    0.25
    createdAt:   AppDate.yesterday()
    project:     1
    task:        11
    id:          112
  }
  {
    description: "Really???"
    isQuestion:  true
    duration:    0
    createdAt:   AppDate.today()
    project:     1
    task:        11
    id:          113
  }
  {
    description: "Building the task manager..."
    isQuestion:  false
    duration:    12
    createdAt:   AppDate.daysAgo(12)
    project:     2
    task:        21
    id:          211
  }
  {
    description: "Adding project management"
    isQuestion:  false
    duration:    8
    createdAt:   AppDate.today()
    project:     2
    task:        22
    id:          221
  }
]

DS.RESTAdapter.configure 'plurals', activity: 'activities'
