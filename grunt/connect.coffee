grunt = require('grunt')
defaultMiddlewares = require('./connect/default_middlewares')
subdomainsMiddleware = require('./connect/subdomains_middleware')

module.exports =
  options:
    port: '<%= config.port %>'
    base: '<%= config.build %>'
    livereload: 35729

  main:
    options:
      base: '<%= config.build %>'
      middleware: (connect, options) ->
        [subdomainsMiddleware(grunt.config.data.config.domain)]
          .concat(defaultMiddlewares(connect, options))

  keepalive:
    options:
      keepalive: true
      base: '<%= config.build %>'
