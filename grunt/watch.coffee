module.exports =
  assemble:
    files: ['<%= config.source %>/**/*']
    tasks: ['assemble']

  sass:
    files: ['<%= config.source %>/styles/**/*.{scss,sass}']
    tasks: ['sass']

  livereload:
    options:
      livereload: '<%= connect.options.livereload %>'
    files: '<%= config.build %>/**/*'
