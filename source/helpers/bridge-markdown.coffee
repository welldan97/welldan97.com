marked = require('marked')
grunt = require('grunt')

module.exports.bridgeMarkdown = (page) ->
  pathToFile = page.src
    .replace(page.basename, '')
    .replace(/\.[^.]+/, '')

  pathToMdFile = "#{pathToFile}/markdown/#{page.basename}.md"

  marked(grunt.file.read(pathToMdFile))
