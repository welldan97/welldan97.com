marked = require('marked')
handlebars = require('handlebars')
grunt = require('grunt')
_ = require('lodash')

module.exports.bridgeMarkdown = (page,options) ->
  pathToFile = page.src
    .replace(page.basename, '')
    .replace(/\.[^.]+/, '')

  pathToMdFile = "#{pathToFile}/markdown/#{page.basename}.md"
  content = grunt.file.read(pathToMdFile)
  marked(compileHandlebars(content, options))

compileHandlebars = (content, options) ->
  _.forOwn options, (fn, key) ->
    if _.isFunction(fn)
      handlebars.registerHelper(key, fn)
  handlebars.compile(content, options)()
