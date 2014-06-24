module.exports =
  options:
    assets: '<%= config.build %>/assets'

    data: '<%= config.source %>/data/**/.{json,yml}'
    helpers: '<%= config.source %>/helpers/*.coffee'
    layout: 'default.jade'
    layoutdir: '<%= config.source %>/layouts/',
    partials: '<%= config.source %>/partials/**/*.jade'

    engine: 'jade'

    domain: '<%= config.domain %>'

  pages:
    files: [
      cwd: '<%= config.source %>/pages/'
      dest: '<%= config.build %>'
      expand: true
      src: ['**/*.jade']
    ]
