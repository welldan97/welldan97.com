module.exports =
  options:
    assets: '<%= config.build %>/assets'

    data: '<%= config.source %>/data/**/.{json,yml}'
    helpers: '<%= config.source %>/helpers/*.coffee'
    layout: 'default.jade'
    layoutdir: '<%= config.source %>/layouts/',
    partials: '<%= config.source %>/partials/**/*.jade'

    engine: 'jade'

  pages:
    files:
      '<%= config.temp %>/': ['<%= config.source %>/pages/**/*.jade']
