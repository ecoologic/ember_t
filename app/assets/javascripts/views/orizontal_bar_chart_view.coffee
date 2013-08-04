App.OrizontalBarChartView = Em.View.extend
  didInsertElement: ->
    console.log 'didInsertElement'
    data = [1,2, 3]
    @set('data', data)

  updateChart: (->
    console.log 'updateChart'
    data = @get('data')
    chart = new OrizontalBarChart(@get('elementId'), data)
    chart.draw()
  ).observes('data')
