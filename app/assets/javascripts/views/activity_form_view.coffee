App.ActivityFormView = Em.View.extend
  templateName: 'activity_form'
  tagName:      'form'
  classNames:   'row'
  actionName:   'submit'

  reset: ->
    @set('description', '')
    @set('duration', '')
    # FIXME: after first click or code assign the binding is lost :(
    #        maybe see here: http://emberjs.com/api/classes/Ember.Binding.html
    # @set('checkIsQuestion', false) if @get('checkIsQuestion', true)
    @bind('description', 'App.ActivityFormView.checkIsQuestion')

  submit: ->
    duration = parseFloat @get('duration')
    duration = 0 unless duration > 0
    activities = @get('controller').get('model')
    activities.createRecord(description: @get('description'), duration: @get('duration'), isQuestion: @get('checkIsQuestion'), createdAt: (new Date))
    @reset()

  checkIsQuestion: (->
      @get('description')? && @get('description').match(/\?/)?
  ).property('description')