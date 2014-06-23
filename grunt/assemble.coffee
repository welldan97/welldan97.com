module.exports =
  options:
    flatten: true
    assets: '<%= config.build %>/assets'

    data: '<%= config.source %>/data/**/.{json,yml}'
    helpers: '<%= config.source %>/helpers/*.coffee'
    layout: 'default.jade'
    layoutdir: '<%= config.source %>/layouts/',
    partials: '<%= config.source %>/partials/**/*.jade'

    engine: 'jade'

  pages:
    files:
      '<%= config.build %>/': ['<%= config.source %>/pages/*.jade']
