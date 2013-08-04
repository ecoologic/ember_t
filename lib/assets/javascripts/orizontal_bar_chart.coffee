class @OrizontalBarChart

  constructor: (parentId, data) ->
    @parentId = parentId
    @data = data
    @chart = d3.select('#' + parentId)
      .attr('class', 'orizontal-bar-chart')

  setData: (data) -> @data = data

  draw: (data) ->
    @setData(data) if data?

    @chart.selectAll('div').remove()
    @chart.selectAll('div')
      .data(@data).enter()
      .append('div')
      .style('width', ((d) -> d * 5 + 'px'))
      .text((d) -> d)
