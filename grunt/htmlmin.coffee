module.exports =
  main:
    options:
      collapseBooleanAttributes: true
      collapseWhitespace: true
      removeAttributeQuotes: true
      removeCommentsFromCDATA: true
      removeEmptyAttributes: true
      removeOptionalTags: true
      removeRedundantAttributes: true
      useShortDoctype: true

    files: [
      expand: true
      cwd: '<%= config.productionBuild %>'
      src: '{,**/}*.html'
      dest: '<%= config.productionBuild %>'
    ]
