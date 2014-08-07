module.exports =
  assets:
    files: [{
      expand: true
      cwd: '<%= config.source %>/stylesheets'
      src: '{,**/}*.{sass,scss,css}'
      dest: '<%= config.build %>/assets/stylesheets'
    }, {
      expand: true
      cwd: '<%= config.source %>/javascripts'
      src: '{,**/}*.{coffee,js}'
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

  public:
    files: [
      expand: true
      dot: true
      cwd: 'source/public'
      dest: '<%= config.productionBuild %>'
      src:  '{,**/}*'
    ]

  production:
    files: [{
      expand: true,
      dot: true,
      cwd: '<%= config.build %>'
      dest: '<%= config.productionBuild %>'
      src:  '{,**/}*.html'
    }, {
      expand: true,
      dot: true,
      cwd: '<%= config.build %>/assets/fonts'
      dest: '<%= config.productionBuild %>/assets/fonts'
      src:  '{,**/}*'
    }, {
      expand: true,
      dot: true,
      cwd: '<%= config.build %>/assets/images'
      dest: '<%= config.productionBuild %>/assets/images'
      src:  '{,**/}*'
    }]


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

  bowerFontAwesome:
    files: [{
      expand: true
      dot: true
      cwd: 'bower_components/font-awesome/fonts'
      dest: '<%= config.build %>/assets/fonts'
      src:  '{,**/}*'
    }, {
      expand: true
      dot: true
      cwd: 'bower_components/font-awesome/css'
      dest: '<%= config.build %>/assets/stylesheets'
      src:  'font-awesome.css'
    }]


  bowerJQuery:
    files:
      '<%= config.build %>/assets/javascripts/jquery.js':
        'bower_components/jquery/dist/jquery.js'

  bowerLodash:
    files:
      '<%= config.build %>/assets/javascripts/lodash.js':
        'bower_components/lodash/dist/lodash.js'
