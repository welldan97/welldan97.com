module.exports =
  stylesheets:
    files: [
      expand: true
      cwd: '<%= config.source %>/stylesheets'
      src: '{,**/}*.sass'
      dest: '<%= config.temp %>/build'
    ]

  bowerBootstrap:
    files: [
      expand: true,
      dot: true,
      cwd: 'bower_components/bootstrap-sass-official/vendor/assets',
      dest: '<%= config.temp %>/build',
      src:  '{,**/}*'
    ]

  fontsAndJavascriptsToBuild:
    files: [
      expand: true,
      dot: true,
      cwd: '<%= config.temp %>/build'
      dest: '<%= config.build %>/assets',
      src:  '{fonts,javascripts}/**/*'
    ]
