module.exports.pageClass = (page, config) ->
  dirname = page.dirname
    .replace(new RegExp("#{config.build}/?"), '')
    .replace('/', '-')

  if dirname == ''
    page.basename
  else
    "#{page.basename} #{dirname}"
