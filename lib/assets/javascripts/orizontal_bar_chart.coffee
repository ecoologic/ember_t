class @OrizontalBarChart

  constructor: (parentId, data) ->
    @parentId = parentId
    @data = data
    @chart = d3.select('#' + parentId)
      .append('div').attr('class', 'orizontal-bar-chart')

  draw: ->
    @chart.selectAll('div')
      .data(@data).enter()
      .append('div')
      .style('width', ((d) -> d * 10 + 'px'))
      .text((d) -> d)
