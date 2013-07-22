App.ActivityFormView = Em.View.extend
  templateName: 'activity_form'
  tagName:      'form'
  classNames:   'row'
  actionName:   'submit'
  submit: ->
    t = @get('controller').get('model')
    as = t.get('activities')
    as.createRecord(description: @get('description'))
    @set('description', '')
