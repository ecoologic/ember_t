App.OrizontalBarChartView = Em.View.extend
  attributeBindings: ['projects']

  didInsertElement: ->
    console.log 'didInsertElement'
    chart = new OrizontalBarChart(@get('elementId'), [])
    @set('chart', chart)

  updateChart: (->
    console.log 'updateChart'
    data = @get('projects.@each.duration').toArray()
    @get('chart').draw(data)
  ).observes('isLoaded', 'projects.@each.duration')
