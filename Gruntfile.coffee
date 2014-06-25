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
    'assemble'
    'autoprefixer'
    'rev'
    'usemin'
    'htmlmin'
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
    'build:development'
    'connect'
    'watch'
  ]

  grunt.registerTask 'default', 'serve'
