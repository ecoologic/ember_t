Em.Handlebars.registerBoundHelper 'time', (date) ->
  new Em.Handlebars.SafeString new AppDate(date).toString() if date?
