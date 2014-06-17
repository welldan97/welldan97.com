module.exports = (grunt) ->
  grunt.initConfig
    connect:
      dev:
        options:
          port: 9000
          base: 'dist'
          keepalive: true

  grunt.loadNpmTasks 'grunt-contrib-connect'
  grunt.registerTask 'default', ['connect:dev']
