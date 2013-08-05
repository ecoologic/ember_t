App.ActivityFormView = Em.View.extend
  classNameBindings: ['isNew']
  isNew:             false
  templateName: 'activity_form'
  tagName:      'form'
  classNames:   'row'
  actionName:   'submit'

  reset: ->
    @set('description', '')
    @set('duration', '')
    @set('checkIsQuestion', false) if @get('checkIsQuestion', true)

  submit: ->
    if @get('isNew')
      duration = parseFloat @get('duration')
      duration = 0 unless duration > 0
      activities = @get('controller.model')
      activities.createRecord(description: @get('description'), duration: duration, isQuestion: @get('checkIsQuestion'), createdAt: (new Date))
      @reset()
    else
      @set('isNew', true)

  checkIsQuestion: ((key, value) ->
    if arguments.length == 1
      @get('description')? && @get('description').match(/\?/)? # getter
    else
      value # setter
  ).property('description')
