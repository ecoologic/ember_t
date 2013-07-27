App.ApplicationRoute = Em.Route.extend
  model: ->
    App.Project.find()
  # events:
