grunt = require('grunt')
highlight = require('highlight.js').highlight

module.exports.embedCode = (path, options) ->
  contents = grunt.file.read(pathToFile(path, options.page))
  highlightObject = highlight(language(path), contents)
  """
  <pre class="hljs #{highlightObject.language}">#{highlightObject.value}</pre>
  """

pathToFile = (path, page) ->
  dir = page.src
    .replace(page.basename, '')
    .replace(/\.[^.]+/, '')

  "#{dir}/#{page.basename}/#{path}"

languageMap =
  hs: 'haskell'
  json: 'json'

language = (path) ->
  extension = path.replace(/.*\./,'')
  languageMap[extension]
