grunt = require('grunt')
defaultMiddlewares = require('./connect/default_middlewares')
subdomainsMiddleware = require('./connect/subdomains_middleware')

module.exports =
  options:
    port: '<%= config.port %>'
    base: '<%= config.build %>'
    livereload: 35729
    middleware: (connect, options) ->
      [subdomainsMiddleware(grunt.config.data.config.domain)]
        .concat(defaultMiddlewares(connect, options))
  main:
    options:
      base: '<%= config.build %>'

  keepalive:
    options:
      keepalive: true
      base: '<%= config.build %>'
