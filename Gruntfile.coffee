module.exports = (grunt) ->
  require('load-grunt-config')(grunt)
  grunt.loadNpmTasks 'grunt-contrib-connect'

  grunt.registerTask 'default', 'connect'
