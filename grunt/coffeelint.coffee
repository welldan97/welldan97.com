module.exports =
  options:
    configFile: 'coffeelint.json'
  grunt: ['grunt/**/*.coffee', 'Gruntfile.coffee']
  main: ['<%= config.source %>/**/*.coffee']
