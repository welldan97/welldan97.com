marked = require('marked')
handlebars = require('handlebars')
grunt = require('grunt')
_ = require('lodash')

module.exports.bridgeMarkdown = (options) ->
  content = grunt.file.read(pathToMdFile(options.page))
  marked(compileHandlebars(content, fixOptions(options)))

fixOptions = (options) ->
  newPage = _.merge {}, options.page,
    src: pathToMdFile(options.page)

  newOptions = _.clone options
  newOptions.page = newPage
  newOptions.options = newOptions
  newOptions

pathToMdFile = (page) ->
  pathToFile = page.src
    .replace(page.basename, '')
    .replace(/\.[^.]+/, '')

  "#{pathToFile}/markdown/#{page.basename}.md"

compileHandlebars = (content, options) ->
  _.forOwn options, (fn, key) ->
    if _.isFunction(fn)
      handlebars.registerHelper(key, fn)
  handlebars.compile(content)(options)
