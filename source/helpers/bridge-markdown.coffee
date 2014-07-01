marked = require('marked')
handlebars = require('handlebars')
grunt = require('grunt')
_ = require('lodash')

module.exports.bridgeMarkdown = ->
  content = grunt.file.read(pathToMdFile(context.page))
  marked(compileHandlebars(content, fixContext(context)))

fixContext = (context) ->
  newPage = _.merge {}, context.page,
    src: pathToMdFile(context.page)

  newContext = _.clone context
  newContext.page = newPage
  newContext.context = newContext
  newContext

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
