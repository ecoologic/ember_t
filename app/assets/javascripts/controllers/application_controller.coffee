# App.ApplicationController = Em.Controller.extend
#   chartValues: ->
#     newChartValues = []
#     max = 100
    
#     for i in [0..100]
#       newChartValues[i] = Em.Object.create(
#         timestamp: i
#         value: (max/2+Math.sin(i)*Math.ceil((max/2.5)*Math.random()))
#       )

#     @set('chartValues', newChartValues)
