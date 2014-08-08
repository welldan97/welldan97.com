module.exports =
  files:
    src: [
      '<%= config.productionBuild %>/assets/javascripts/{,*/}*.js',
      '<%= config.productionBuild %>/assets/stylesheets/{,*/}*.css',
      '<%= config.productionBuild %>/assets/images/{,*/}*.*',
      # '<%= config.productionBuild %>/assets/fonts/{,*/}*.*', # TODO
    ]
