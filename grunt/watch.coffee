module.exports =
  copyAssets:
    files: ['<%= config.source %>/{stylesheets,javascripts,images}/**/*']
    tasks: ['copy:assets']

  sass:
    files: ['<%= config.build %>/**/*.{scss,sass}']
    tasks: ['sass']

  coffee:
    files: ['<%= config.build %>/**/*.coffee']
    tasks: ['coffee']

  assemble:
    files: ['<%= config.source %>/{data,helpers,layouts,pages,partials}/**/*']
    tasks: ['assemble']

  livereload:
    options:
      livereload: '<%= connect.options.livereload %>'
    files: '<%= config.build %>/**/*'
