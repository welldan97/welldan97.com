isEnvironment = require('./lib/commons').isEnvironment

module.exports = (grunt) ->
  require('load-grunt-tasks')(grunt)
  require('load-grunt-config')(grunt)
  require('time-grunt')(grunt)
  grunt.loadNpmTasks 'assemble'

  grunt.registerTask 'copyBowerFiles', [
    'copy:bowerBootstrap'
    'copy:bowerD3'
    'copy:bowerFontAwesome'
    'copy:bowerJQuery'
    'copy:bowerLodash'
  ]

  if isEnvironment('production')
    grunt.registerTask 'build', [
      'coffeelint'

      'buildCore'
      'copy:public'

      'imagemin'
      'useminPrepare'
      'concat'
      'cssmin'
      'uglify'
      'copy:production'
      'filerev'
      'usemin'
      'autoprefixer'
      'htmlmin'
      'compress'
    ]
  else
    grunt.registerTask 'build', 'buildCore'

  grunt.registerTask 'buildCore', [
    'clean'

    'copyBowerFiles'
    'copy:vendor'
    'copy:assets'

    'sass'
    'coffee'

    'assemble'
  ]

  if isEnvironment('production')
    grunt.registerTask 'serve', [
      'build'
      'connect:production'
    ]
  else
    grunt.registerTask 'serve', [
      'build'
      'connect:development'
      'watch'
    ]

  grunt.registerTask 'deploy', [
    'copy:deploy'
  ]

  grunt.registerTask 'default', 'serve'
