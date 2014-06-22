module.exports =
  assemble:
    files: ['<%= config.source %>/**/*']
    tasks: ['assemble']
  livereload:
    options:
      livereload: '<%= connect.options.livereload %>'
    files: '<%= config.build %>/**/*'
