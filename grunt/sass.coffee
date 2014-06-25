module.exports =
  options:
    sourceMap: true

  main:
    files: [
      expand: true
      cwd:    '<%= config.temp %>/build/stylesheets'
      src:    '{,**/}*.{sass,scss}'
      dest:   '<%= config.build %>/assets/stylesheets'
      ext:    '.css'
    ]
