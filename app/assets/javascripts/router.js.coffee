App.Router.map ->
  @resource 'project', path: 'projects/:project_id', ->
    @resource 'task', path: 'tasks/:task_id'

App.ApplicationRoute = Em.Route.extend
  model: -> App.Project.find()
  # events:

App.ProjectRoute = Em.Route.extend
  model: (params) -> App.Project.find(params.project_id)

App.ProjectIndexRoute = Ember.Route.extend
  model: (params) -> @modelFor('project')

App.TasksRoute = Em.Route.extend
  model: (params) -> App.Project.find(params.project_id).get('tasks')
  # App.Task.find(project: params.project_id) # not implemented in FIXTURES 13

App.TaskRoute = Em.Route.extend
  model: (params) -> App.Task.find(params.task_id)
