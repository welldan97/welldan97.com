module.exports =
  stylesheets:
    files: [
      expand: true
      cwd: '<%= config.source %>/stylesheets'
      src: '{,**/}*.sass'
      dest: '<%= config.temp %>/build/assets/stylesheets'
    ]

  fromTempToBuild:
    files: [
      expand: true
      dot:  true
      cwd:  '<%= config.temp %>/build'
      dest: '<%= config.build %>'
      src:  ['{,**/}*', '!{,**}*.{sass,scss}']
    ]

  vendor:
    files: [
      expand: true,
      dot: true,
      cwd: '<%= config.vendor %>'
      dest: '<%= config.temp %>/build'
      src:  '{,**/}*'
    ]

  bowerBootstrap:
    files: [
      expand: true
      dot: true
      cwd: 'bower_components/bootstrap-sass-official/vendor'
      dest: '<%= config.temp %>/build'
      src:  '{,**/}*'
    ]

  bowerD3:
    files:
      '<%= config.temp %>/build/assets/javascripts/d3.js':
        'bower_components/d3/d3.js'
