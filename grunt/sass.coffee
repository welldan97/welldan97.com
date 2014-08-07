isEnvironment = require('../lib/commons').isEnvironment

module.exports =
  options:
    sourceMap: isEnvironment('development')

  main:
    files: [
      expand: true
      cwd:    '<%= config.build %>'
      src:    '{,**/}*.{sass,scss}'
      dest:   '<%= config.build %>'
      ext:    '.css'
    ]
