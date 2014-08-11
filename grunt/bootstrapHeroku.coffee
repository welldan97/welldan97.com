module.exports =
  main:
    auth: '<%= config.heroku.auth %>'
    app: '<%= config.heroku.app %>'
    domains: ['<%= config.domain %>', '*.<%= config.domain %>']
