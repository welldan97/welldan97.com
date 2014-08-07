module.exports =
  options:
    dest: '<%= config.productionBuild %>'
    root: '<%= config.build %>'
  html: '<%= config.build %>/{,**/}*.html'
