App.Router.map ->
  @resource 'project', path: 'projects/:project_id', ->
    @resource 'task', path: 'tasks/:task_id'
