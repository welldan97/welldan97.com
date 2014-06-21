module.exports =
  options:
    flatten: true
    assets: '<%= config.build %>/assets'

    data: '<%= config.source %>/data/**/.{json,yml}'
    helpers: '<%= config.source %>/helpers'
    layout: 'default.hbs'
    layoutdir: '<%= config.source %>/layouts/',
    partials: '<%= config.source %>/partials/**/*.hbs'

  pages:
    files:
      '<%= config.build %>/': ['<%= config.source %>/pages/*.hbs']
