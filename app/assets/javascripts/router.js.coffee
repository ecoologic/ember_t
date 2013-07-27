App.Router.map ->
  @resource 'projects', path: 'projects', ->
    @resource 'project', path: ':project_id', ->
      @resource 'task', path: 'tasks/:task_id'
