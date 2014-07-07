module.exports =
  copyAssets:
    files: ['<%= config.source %>/{stylesheets,javascripts,images}/**/*']
    tasks: ['newer:copy:assets']

  sass:
    files: ['<%= config.build %>/**/*.{scss,sass}']
    tasks: ['sass']

  coffee:
    files: ['<%= config.build %>/**/*.coffee']
    tasks: ['newer:coffee']

  assemble:
    files: ['<%= config.source %>/{data,helpers,layouts,pages,partials}/**/*']
    tasks: ['assemble']

  livereload:
    options:
      livereload: '<%= connect.options.livereload %>'
    files: '<%= config.build %>/**/*.{html,js,css,png,jpg,gif}'
