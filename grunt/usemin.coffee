module.exports =
  options:
    assetsDirs: ['<%= config.build %>', '<%= config.build %>/assets/images']
  html: ['<%= config.build %>/{,**/}*.html'],
  css: ['<%= config.build %>/assets/styles/{,*/}*.css']
