module.exports.pageClass = ->
  page = context.page
  dirname = page.dirname
    .replace(new RegExp("#{context.config.build}/?"), '')
    .replace('/', '-')

  if dirname == ''
    page.basename
  else
    "#{page.basename} #{dirname}"
