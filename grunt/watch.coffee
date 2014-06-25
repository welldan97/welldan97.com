module.exports =
  copyStylesheets:
    files: ['<%= config.source %>/stylesheets/**/*']
    tasks: ['copy:stylesheets']

  sass:
    files: ['<%= config.temp %>/build/**/*.{scss,sass}']
    tasks: ['sass']

  copyFontsAndJavascriptsToBuild:
    files: ['<%= config.temp %>/build/{fonts,javascripts}/**/*']
    tasks: ['copy:fontsAndJavascriptsToBuild']

  assemble:
    files: ['<%= config.source %>/{data,helpers,layouts,pages,partials}/**/*']
    tasks: ['assemble']

  livereload:
    options:
      livereload: '<%= connect.options.livereload %>'
    files: '<%= config.build %>/**/*'
