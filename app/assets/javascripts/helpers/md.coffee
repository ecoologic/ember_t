Ember.Handlebars.registerBoundHelper 'md', (text) ->
  new Ember.Handlebars.SafeString window.showdown.makeHtml(text) if text?
