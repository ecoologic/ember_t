# App.ChartValuesController = Em.ArrayController.extend
#   content: []
#   init: -> @replaceWithRandom()

#   replaceWithRandom: ->
#     newContent = []
#     max = 100
    
#     for i in [0..100]
#       newContent[i] = Em.Object.create(
#         timestamp: i
#         value: (max/2+Math.sin(i)*Math.ceil((max/2.5)*Math.random()))
#       )

#     @set('content', newContent)
