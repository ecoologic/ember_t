App.Activity = DS.Model.extend
  description: DS.attr('string')
  isQuestion:  DS.attr('boolean')
  duration:    DS.attr('number')
  createdAt:   DS.attr('date')
  task:        DS.belongsTo('App.Task')

App.Activity.FIXTURES = [
  {
    id:          0
    description: "Went to the shop, got the **milk**, gave the money, came back and put it in the fridge"
    isQuestion:  false
    duration:    0.75
    created_at:  AppDate.daysAgo(2)
    task:        0
  }
  {
    id:          1
    description: "I don't care, it's not there anymore"
    isQuestion:  false
    duration:    0.25
    created_at:  AppDate.yesterday()
    task:        0
  }
  {
    id:          2
    description: "Really???"
    isQuestion:  true
    duration:    0
    created_at:  AppDate.today()
    task:        0
  }
]

DS.RESTAdapter.configure 'plurals', activity: 'activities'
