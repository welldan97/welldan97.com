module.exports = (grunt) ->
  require('load-grunt-tasks')(grunt)
  require('load-grunt-config')(grunt)
  require('time-grunt')(grunt)

  grunt.loadNpmTasks 'assemble'

  grunt.registerTask 'build:production', [
    'coffeelint'
    'clean'
    'copy:stylesheets'
    'copy:bowerBootstrap'
    'sass'
    'copy:fontsAndJavascriptsToBuild'
    'autoprefixer'
    'assemble'
  ]

  grunt.registerTask 'build:development', [
      'clean'
      'copy:stylesheets'
      'copy:bowerBootstrap'
      'sass'
      'copy:fontsAndJavascriptsToBuild'
      'assemble'
    ]

  grunt.registerTask 'serve', [
    'build'
    'connect'
    'watch'
  ]

  grunt.registerTask 'default', 'serve'
