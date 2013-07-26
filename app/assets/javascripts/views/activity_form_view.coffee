App.ActivityFormView = Em.View.extend
  templateName: 'activity_form'
  tagName:      'form'
  classNames:   'row'
  actionName:   'submit'

  reset: ->
    @set('description', '')
    @set('duration', '')
    @set('isQuestion', '')

  submit: ->
    @get('controller').addActivity(description: @get('description'), duration: @get('duration'), isQuestion: @get('isQuestion'))
    @reset()
