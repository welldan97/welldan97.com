module.exports =
  options:
    sourceMap: true

  main:
    files: [
      expand: true
      cwd:    '<%= config.build %>'
      src:    '{,**/}*.{sass,scss}'
      dest:   '<%= config.build %>'
      ext:    '.css'
    ]
