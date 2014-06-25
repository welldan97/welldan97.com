module.exports.pageClass = (page, config) ->
  prefix = page.dirname
    .replace(new RegExp("#{config.build}/?"), '')
    .replace('/', '-')

  if prefix == ''
    page.basename
  else
    "#{prefix}-#{page.basename}"
