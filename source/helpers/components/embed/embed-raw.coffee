grunt = require('grunt')

module.exports.embedRaw = (path) ->
  grunt.file.read(pathToFile(path, context.page))

pathToFile = (path, page) ->
  dir = page.src
    .replace(page.basename, '')
    .replace(/\.[^.]+/, '')

  "#{dir}/#{page.basename}/#{path}"
