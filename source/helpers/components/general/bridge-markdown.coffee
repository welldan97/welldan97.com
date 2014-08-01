marked = require('marked')
handlebars = require('handlebars')
grunt = require('grunt')
highlight = require('highlight.js').highlight
_ = require('lodash')

module.exports.bridgeMarkdown = ->
  content = grunt.file.read(pathToMdFile(context.page))

  marked.setOptions
    langPrefix: 'hljs '
    highlight: (code, lang, cb) ->
      highlight(lang, code).value

  withFakeContext (fakeContext) ->
    compileHandlebars(unescape(marked(content)), fakeContext)

pathToMdFile = (page) ->
  pathToFile = page.src
    .replace(page.basename, '')
    .replace(/\.[^.]+/, '')

  "#{pathToFile}markdown/#{page.basename}.md"

withFakeContext = (cb) ->
  originalContext = _.clone(context)
  newContext =
    page:
      src: pathToMdFile(context.page)

  _.merge context, newContext

  result = cb(context)

  global.context = originalContext

  result

compileHandlebars = (content, context) ->
  _.forOwn context, (fn, key) ->
    if _.isFunction(fn)
      handlebars.registerHelper(key, fn)
  handlebars.compile(content)(context)

unescape = (content) ->
  content
    .replace(/&quot;/g, '"')
    .replace(/&#39;/g, "'")
