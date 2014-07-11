module.exports =
  files:
    src: [
      '<%= config.build %>/assets/javascripts/{,*/}*.js',
      '<%= config.build %>/assets/stylesheets/{,*/}*.css',
      '<%= config.build %>/assets/images/{,*/}*.*',
      # '<%= config.build %>/assets/fonts/{,*/}*.*', # TODO
      '<%= config.build %>/*.{ico,png}'
    ]
