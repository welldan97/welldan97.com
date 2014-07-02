marked = require('marked')
handlebars = require('handlebars')
grunt = require('grunt')
_ = require('lodash')

module.exports.bridgeMarkdown = ->
  content = grunt.file.read(pathToMdFile(context.page))
  compileHandlebars(unescape(marked(content)), context)

pathToMdFile = (page) ->
  pathToFile = page.src
    .replace(page.basename, '')
    .replace(/\.[^.]+/, '')

  "#{pathToFile}/markdown/#{page.basename}.md"

compileHandlebars = (content, context) ->
  _.forOwn context, (fn, key) ->
    if _.isFunction(fn)
      handlebars.registerHelper(key, fn)
  handlebars.compile(content)(context)

unescape = (content)->
  content
    .replace(/&quot;/g, '"')
    .replace(/&#39;/g, "'")
