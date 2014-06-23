module.exports =
  options:
    sourceMap: true
  main:
    files: [
      expand: true
      cwd: '<%= config.source %>/styles'
      src: ['*.sass']
      dest: '<%= config.build %>/assets'
      ext: '.css'
    ]
