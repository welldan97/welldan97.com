grunt = require('grunt')
highlight = require('highlight.js').highlight
_ = require('lodash')

module.exports.embedCode = (path) ->
  contents = grunt.file.read(pathToFile(path, context.page))
  highlightObject = highlight(language(path), contents)
  """
  <pre class="hljs #{highlightObject.language}">#{highlightObject.value}</pre>
  """

pathToFile = (path, page) ->
  dir = page.src
    .replace(page.basename, '')
    .replace(/\.[^.]+/, '')

  "#{dir}/#{page.basename}/#{path}"

extensionLanguageMap =
  hs: 'haskell'
  json: 'json'
  r: 'r'
  coffee: 'coffeescript'
  # HACK:
  jade: 'haml'

filenameLanguageMap =
  Makefile: 'makefile'

language = (path) ->
  if _.has(filenameLanguageMap, path)
    filenameLanguageMap[path]
  else
    extension = path.replace(/.*\./,'')
    extensionLanguageMap[extension]
