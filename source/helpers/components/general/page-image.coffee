grunt = require('grunt')

module.exports.pageImagePath = (name) ->
  pathToFile("#{normalizeFileName(name)}.jpg", context.page)

normalizeFileName = (name) ->
  name.toLowerCase().replace(/[^a-z0-9]/g, '-')

pathToFile = (path, page) ->
  dir = page.src
    .replace(page.basename, '')
    .replace(/\.[^.]+/, '')
    .replace(/markdown\//, '') # HACK
    .replace("#{context.config.source}/pages/", '')

  "/assets/images/#{dir}#{page.basename}/#{path}"
