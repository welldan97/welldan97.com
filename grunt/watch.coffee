module.exports =
  copyAssets:
    files: ['<%= config.source %>/{stylesheets,javascripts}/**/*']
    tasks: ['copy:assets']

  sass:
    files: ['<%= config.temp %>/build/**/*.{scss,sass}']
    tasks: ['sass']

  coffee:
    files: ['<%= config.temp %>/build/**/*.coffee']
    tasks: ['coffee']

  copyFromTempToBuild:
    files: [
      '<%= config.temp %>/build/**/*'
      '!<%= config.temp %>/build/**/*.{sass,scss,coffee}'
    ]
    tasks: ['copy:fromTempToBuild']

  assemble:
    files: ['<%= config.source %>/{data,helpers,layouts,pages,partials}/**/*']
    tasks: ['assemble']

  livereload:
    options:
      livereload: '<%= connect.options.livereload %>'
    files: '<%= config.build %>/**/*'
