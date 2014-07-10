grunt = require('grunt')

module.exports.pageImagePath = (name) ->
  pathToFile("#{normalizeFileName(name)}.png", context.page)

normalizeFileName = (name) ->
  name.toLowerCase().replace(/[^a-z]/g, '-')

pathToFile = (path, page) ->
  dir = page.src
    .replace(page.basename, '')
    .replace(/\.[^.]+/, '')
    .replace(/markdown\//, '') # HACK
    .replace("#{context.config.source}/pages/", '')

  "/assets/images/#{dir}#{page.basename}/#{path}"
