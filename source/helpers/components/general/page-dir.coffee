module.exports.pageDir = (maybePage) ->
  page = maybePage || context.page
  dirname = page.dirname
    .replace(new RegExp("#{context.config.build}/?"), '')
    .replace('/', '-')

  if dirname == ''
    [page.basename]
  else
    [dirname, page.basename]
