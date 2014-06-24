module.exports =
  assemble:
    files: ['<%= config.source %>/**/*']
    tasks: ['assemble']

  copy:
    files: ['<%= config.temp %>/source/**/*']
    tasks: ['copy']

  sass:
    files: ['<%= config.source %>/styles/**/*.{scss,sass}']
    tasks: ['sass']

  livereload:
    options:
      livereload: '<%= connect.options.livereload %>'
    files: '<%= config.build %>/**/*'
