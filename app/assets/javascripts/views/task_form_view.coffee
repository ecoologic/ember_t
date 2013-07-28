App.TaskFormView = Em.View.extend
  templateName: 'task_form'
  tagName:      'form'
  classNames:   'row'
  actionName:   'submit'

  reset: ->
    @set('name', '')
    @set('description', '')

  submit: ->
    project = @get('controller').get('model')
    project.get('tasks').createRecord(name: @get('name'), description: @get('description'), createdAt: (new Date))
    @reset()
