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
      'autoprefixer'
      'useminPrepare'
      'concat'
      'cssmin'
      'uglify'
      'filerev'
      'usemin'
      'htmlmin'
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
      'connect:keepalive'
    ]
  else
    grunt.registerTask 'serve', [
      'build'
      'connect:main'
      'watch'
    ]

  grunt.registerTask 'default', 'serve'
