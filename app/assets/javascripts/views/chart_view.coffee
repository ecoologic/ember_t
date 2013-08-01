App.ChartView = Em.View.extend
  # chartValuesBinding: 'App.ApplicationController.chartValues'
  chart: {}
  line: {}
  area: {}

  init: ->
    chartValues = []
    max = 100

    for i in [0..100]
      chartValues[i] = Em.Object.create(
        timestamp: i
        value: (max/2+Math.sin(i)*Math.ceil((max/2.5)*Math.random()))
      )
    @set('chartValues', chartValues)
    debugger


  didInsertElement: ->
    elementId = 'foo'
    chartValues = @get('chartValues')
    debugger

    margin = { top: 35, right: 35, bottom: 35, left: 35}
    w = 500 - margin.right - margin.left
    h = 300 - margin.top - margin.top

    x = d3.scale.linear().range([0,w]).domain([1,chartValues.length])
    y = d3.scale.linear().range([h,0]).domain([0,100])

    xAxis = d3.svg.axis()
      .scale(x)
      .ticks(10)
      .tickSize(-h)
      .tickSubdivide(true)
    yAxis = d3.svg.axis()
      .scale(y)
      .ticks(4)
      .tickSize(-w)
      .orient('left')

    # Prepeare Chart Elements:
    line = d3.svg.line()
      .interpolate('monotone')
      .x((d) -> x(d.get('timestamp')))
      .y((d) -> y(d.get('value')))
    @set('line', line)
    
    area = d3.svg.area()
      .interpolate('monotone')
      .x((d) -> x(d.get('timestamp')))
      .y0(h)
      .y1((d) -> y(d.get('value')))
    @set('area',area)
                         
    chart = d3.select('#' + elementId).append('svg:svg')
      .attr('id','chart')
      .attr('width', w + margin.left + margin.right)
      .attr('height', w + margin.top + margin.bottom)
      .append('svg:g')
      .attr('transform', "translate(#{margin.left}, #{margin.top})")

    # Add Chart Elements to Chart:
    chart.append('svg:g')
      .attr('class', 'x axis')
      .attr('transform', "translate(0, #{h})")
      .call(xAxis)
    
    chart.append('svg:g')
      .attr('class', 'y axis')
      .call(yAxis)
                         
    chart.append('svg:clipPath')
      .attr('id', 'clip')
      .append('svg:rect')
      .attr('width', w)
      .attr('height', h)

    chart.append('svg:path')
      .attr('class', 'area')
      .attr('clip-path', 'url(#clip)')
      .attr('d', area(chartValues))

    chart.append('svg:path')
      .attr('class', 'line')
      .attr('clip-path', 'url(#clip)')
      .attr('d', line(chartValues))
    debugger
    @set('chart', chart)

  # updateChart: (->
  #   chartValues = @get('chartValues')
  #   chart = @get('chart')
  #   line = @get('line')
  #   area = @get('area')
      
  #   debugger
  #   chart.selectAll('path.line')
  #     .data(chartValues)
  #     .transition()
  #     .duration(500)
  #     .ease('sin')
  #     .attr('d', line(chartValues))
  #   chart.selectAll('path.area')
  #     .data(chartValues)
  #     .transition()
  #     .duration(500)
  #     .ease('sin')
  #     .attr('d', area(chartValues))
  # ).observes('chartValues.@each.value')
