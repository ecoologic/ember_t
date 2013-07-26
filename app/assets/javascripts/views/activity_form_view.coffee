App.ActivityFormView = Em.View.extend
  templateName: 'activity_form'
  tagName:      'form'
  classNames:   'row'
  actionName:   'submit'

  reset: ->
    @set('description', '')
    @set('duration', '')

  submit: ->
    @get('controller').addActivity(description: @get('description'), duration: @get('duration'), isQuestion: @get('checkIsQuestion'))
    @reset()

  checkIsQuestion: (->
      @get('description')? && @get('description').match(/\?/)?
  ).property('description')