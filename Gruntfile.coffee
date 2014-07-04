module.exports = (grunt) ->
  require('load-grunt-tasks')(grunt)
  require('load-grunt-config')(grunt)
  require('time-grunt')(grunt)

  grunt.loadNpmTasks 'assemble'

  grunt.registerTask 'copyBowerFiles', [
    'copy:bowerBootstrap'
    'copy:bowerD3'
    'copy:bowerJQuery'
    'copy:bowerLodash'
  ]

  grunt.registerTask 'build:production', [
    'coffeelint'
    'build:development'
    'autoprefixer'
    'rev'
    'usemin'
    'htmlmin'
  ]

  grunt.registerTask 'build:development', [
    'clean'

    'copy:assets'
    'copy:vendor'
    'copyBowerFiles'

    'sass'
    'coffee'

    'assemble'
  ]

  grunt.registerTask 'serve', [
    'build:development'
    'connect:main'
    'watch'
  ]

  grunt.registerTask 'preview', [
    'build:production'
    'connect:keepalive'
  ]

  grunt.registerTask 'default', 'serve'
