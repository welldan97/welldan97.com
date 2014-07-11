module.exports =
  options:
    assetsDirs: ['<%= config.build %>',]

    dest: '<%= config.build %>'
  html: ['<%= config.build %>/{,**/}*.html'],
  css: ['<%= config.build %>/assets/stylesheets/{,**/}*.css']
