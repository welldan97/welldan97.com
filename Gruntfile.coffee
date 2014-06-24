module.exports = (grunt) ->
  require('load-grunt-tasks')(grunt)
  require('load-grunt-config')(grunt)
  require('time-grunt')(grunt)

  grunt.loadNpmTasks 'assemble'

  grunt.registerTask 'build', [
    'coffeelint'
    'clean'
    'sass'
    'autoprefixer'
    'assemble'
    'inlinecss'
  ]

  grunt.registerTask 'serve', [
    'build'
    'connect'
    'watch'
  ]

  grunt.registerTask 'default', 'serve'
