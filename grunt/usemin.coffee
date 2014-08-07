module.exports =
  options:
    assetsDirs: ['<%= config.productionBuild %>',]

    dest: '<%= config.productionBuild %>'
  html: ['<%= config.productionBuild %>/{,**/}*.html'],
  css: ['<%= config.productionBuild %>/assets/stylesheets/{,**/}*.css']
