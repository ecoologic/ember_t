App.Company = DS.Model.extend
  name:        DS.attr('string')
  description: DS.attr('string')
  createdAt:   DS.attr('date')
  projects:    DS.hasMany('App.Project')

  duration: (->
    sum = 0
    @get('projects').forEach (project) ->
      sum += project.get('duration')
    sum
  ).property('projects.@each.duration')

DS.RESTAdapter.configure 'plurals', company: 'companies'

App.Company.FIXTURES = [
  {
    name:        "Ecoologic ltd."
    description: "This is my business. I develop this project and do grocery. Now piss off!"
    createdAt:   AppDate.daysAgo(7)
    id:          1
    projects:    [11, 12]
  }
]
