Em.Handlebars.registerBoundHelper 'md', (text) ->
  new Em.Handlebars.SafeString window.showdown.makeHtml(text) if text?
