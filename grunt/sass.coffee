module.exports =
  options:
    sourceMap: true

  main:
    files: [
      expand: true
      cwd: '<%= config.source %>/stylesheets'
      src: ['*.sass']
      dest: '<%= config.build %>/assets'
      ext: '.css'
    ]
