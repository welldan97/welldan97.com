grunt = require('grunt')

module.exports.embedImage = (name) ->
  path = pathToFile("#{normalizeFileName(name)}.png", context.page)
  "<img src=\"#{path}\" />"

normalizeFileName = (name) ->
  name.toLowerCase().replace(/[^a-z]/g, '-')

pathToFile = (path, page) ->
  dir = page.src
    .replace(page.basename, '')
    .replace(/\.[^.]+/, '')
    .replace("#{context.config.source}/pages/", '')

  "/assets/images/#{dir}#{page.basename}/#{path}"
