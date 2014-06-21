module.exports = (grunt) ->
  require('load-grunt-config')(grunt)

  grunt.loadNpmTasks 'grunt-contrib-connect'
  grunt.loadNpmTasks 'assemble'

  grunt.registerTask 'build', 'assemble'
  grunt.registerTask 'default', 'connect'
