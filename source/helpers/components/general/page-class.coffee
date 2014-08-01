module.exports.pageClass = ->
  classes = if context.pageHTMLClass
    [context.pageHTMLClass]
  else
    []

  page = context.page
  dirname = page.dirname
    .replace(new RegExp("#{context.config.build}/?"), '')
    .replace('/', '-')

  if dirname == ''
    classes.push(page.basename)
  else
    classes.push(page.basename, dirname)

  classes.join(' ')
