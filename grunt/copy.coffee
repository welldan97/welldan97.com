module.exports =
  assets:
    files: [{
      expand: true
      cwd: '<%= config.source %>/stylesheets'
      src: '{,**/}*.sass'
      dest: '<%= config.build %>/assets/stylesheets'
    }, {
      expand: true
      cwd: '<%= config.source %>/javascripts'
      src: '{,**/}*.coffee'
      dest: '<%= config.build %>/assets/javascripts'
    }]

  vendor:
    files: [
      expand: true,
      dot: true,
      cwd: '<%= config.vendor %>'
      dest: '<%= config.build %>'
      src:  '{,**/}*'
    ]

  bowerBootstrap:
    files: [
      expand: true
      dot: true
      cwd: 'bower_components/bootstrap-sass-official/vendor'
      dest: '<%= config.build %>'
      src:  '{,**/}*'
    ]

  bowerD3:
    files:
      '<%= config.build %>/assets/javascripts/d3.js':
        'bower_components/d3/d3.js'
