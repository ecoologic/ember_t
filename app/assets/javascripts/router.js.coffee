App.Router.map ->
  @resource 'tasks', path: 'tasks', ->
    @resource 'task', path: ':task_id'
