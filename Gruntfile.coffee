module.exports = (grunt) ->
  require('load-grunt-config')(grunt)
  require('time-grunt')(grunt)


  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks 'grunt-contrib-connect'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-coffeelint'
  grunt.loadNpmTasks 'assemble'

  grunt.registerTask 'build', [
    'coffeelint'
    'clean'
    'assemble'
  ]

  grunt.registerTask 'serve', [
    'build'
    'connect'
    'watch'
  ]

  grunt.registerTask 'default', 'serve'
