App.Activity = DS.Model.extend
  description: DS.attr('string')
  task:        DS.belongsTo('App.Task')

App.Activity.FIXTURES = [
  {
    id:          0
    description: "Went to the shop, got the **milk**, gave the money, came back and put it in the fridge"
    task:        0
  }
  {
    id:          1
    description: "I don't care, it's not there anymore"
    task:        0
  }
]
