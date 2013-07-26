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
    @set('checkIsQuestion', false) if @get('checkIsQuestion', true)

  submit: ->
    @get('controller').addActivity(description: @get('description'), duration: @get('duration'), isQuestion: @get('checkIsQuestion'))
    @reset()

  checkIsQuestion: (->
      @get('description')? && @get('description').match(/\?/)?
  ).property('description')