App.TaskFormView = Em.View.extend
  classNameBindings: ['isNew']
  isNew:             false
  templateName: 'task_form'
  tagName:      'form'
  classNames:   'row'
  actionName:   'submit'

  reset: ->
    @set('name', '')
    @set('description', '')

  submit: ->
    console.log 'xxx', @get('isNew')
    if @get('isNew')
      project = @get('controller.model')
      project.get('tasks').createRecord(name: @get('name'), description: @get('description'), createdAt: (new Date))
      @reset()
    else
      @set('isNew', true)
