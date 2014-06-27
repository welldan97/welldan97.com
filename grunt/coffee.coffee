module.exports =
  options:
    sourceMap: true
  main:
    files: [
      expand: true
      cwd:    '<%= config.temp %>/build'
      src:    '{,**/}*.coffee'
      dest:   '<%= config.build %>'
      ext:    '.js'
    ]
