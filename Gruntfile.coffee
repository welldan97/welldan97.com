module.exports = (grunt) ->
  require('load-grunt-config')(grunt)
  require('time-grunt')(grunt)


  grunt.loadNpmTasks 'grunt-contrib-connect'
  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks 'assemble'

  grunt.registerTask 'build', [
    'clean'
    'assemble'
  ]

  grunt.registerTask 'default', 'connect'
