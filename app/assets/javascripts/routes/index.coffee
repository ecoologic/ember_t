App.IndexRoute = Em.Route.extend
  model: ->
    App.Project.find()
