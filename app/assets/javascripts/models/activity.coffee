App.Activity = DS.Model.extend
  description: DS.attr('string')
  isQuestion:  DS.attr('boolean')
  duration:    DS.attr('number')
  createdAt:   DS.attr('date')
  company:     DS.belongsTo('App.Company')
  project:     DS.belongsTo('App.Project')
  task:        DS.belongsTo('App.Task')

DS.RESTAdapter.configure 'plurals', activity: 'activities'

App.Activity.FIXTURES = [
  {
    description: "Went to the shop, got the **milk**, gave the money, came back and put it in the fridge"
    isQuestion:  false
    duration:    0.75
    createdAt:   AppDate.daysAgo(2)
    company:     1
    project:     11
    task:        111
    id:          1111
  }
  {
    description: "I don't care, it's not there anymore"
    isQuestion:  false
    duration:    0.25
    createdAt:   AppDate.yesterday()
    company:     1
    project:     11
    task:        111
    id:          1112
  }
  {
    description: "Really???"
    isQuestion:  true
    duration:    0
    createdAt:   AppDate.today()
    company:     1
    project:     11
    task:        111
    id:          1113
  }
  {
    description: "Building the task manager..."
    isQuestion:  false
    duration:    12
    createdAt:   AppDate.daysAgo(5)
    company:     1
    project:     12
    task:        121
    id:          1211
  }
  {
    description: "Create a new activity"
    isQuestion:  false
    duration:    12
    createdAt:   AppDate.daysAgo(6)
    company:     1
    project:     12
    task:        121
    id:          1212
  }
  {
    description: "Adding project management"
    isQuestion:  false
    duration:    8
    createdAt:   AppDate.today()
    company:     1
    project:     12
    task:        122
    id:          1221
  }
]

