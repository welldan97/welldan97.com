grunt = require('grunt')
highlight = require('highlight.js').highlight

module.exports.embedCode = (path, options) ->
  contents = grunt.file.read(pathToFile(path, options.page))
  code = highlight(language(path), contents).value
  "<pre>#{code}</pre>"

pathToFile = (path, page) ->
  dir = page.src
    .replace(page.basename, '')
    .replace(/\.[^.]+/, '')

  "#{dir}/#{page.basename}/#{path}"

language = (path) ->
  path.replace(/.*\./,'')
