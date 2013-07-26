App.Activity = DS.Model.extend
  description: DS.attr('string')
  duration:    DS.attr('number')
  isQuestion:  DS.attr('boolean')
  # createdAt:   DS.attr('date')
  task:        DS.belongsTo('App.Task')

App.Activity.FIXTURES = [
  {
    id:          0
    description: "Went to the shop, got the **milk**, gave the money, came back and put it in the fridge"
    duration:    0.75
    isQuestion: false
    # created_at:  new Date
    task:        0
  }
  {
    id:          1
    description: "I don't care, it's not there anymore"
    duration:    0.25
    isQuestion: false
    # created_at:  new Date
    task:        0
  }
  {
    id:          2
    description: "Really???"
    duration:    0
    isQuestion: true
    # created_at:  new Date
    task:        0
  }
]

DS.RESTAdapter.configure 'plurals', activity: 'activities'
