App.TaskFormView = Em.View.extend
  templateName: 'task_form'
  tagName:      'form'
  classNames:   'row'
  actionName:   'submit'

  reset: ->
    @set('name', '')
    @set('description', '')

  submit: ->
    @get('controller').create(name: @get('name'), description: @get('description'))
    @reset()
