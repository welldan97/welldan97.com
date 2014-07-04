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
    }, {
      expand: true
      cwd: '<%= config.source %>/images'
      src: '{,**/}*.{jpg,png,gif}'
      dest: '<%= config.build %>/assets/images'
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

  bowerJQuery:
    files:
      '<%= config.build %>/assets/javascripts/jquery.js':
        'bower_components/jquery/dist/jquery.js'

  bowerLodash:
    files:
      '<%= config.build %>/assets/javascripts/lodash.js':
        'bower_components/lodash/dist/lodash.js'
