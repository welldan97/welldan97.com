module.exports =
  options:
    port: '<%= config.port %>'
    base: '<%= config.build %>'
    livereload: 35729
  main:
    options:
      base: '<%= config.build %>'

  keepalive:
    options:
      keepalive: true
      base: '<%= config.build %>'
