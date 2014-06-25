module.exports.pageStyles = (page, config) ->

  stylesheets = page.data.stylesheets || []

  dirname = page.dirname
      .replace(new RegExp("#{config.build}/?"), '')

  defaultPageStyle = if dirname == ''
    "#{page.basename}"
  else
    "#{dirname}/#{page.basename}"

  stylesheets.push(defaultPageStyle)
  stylesheets
    .map (stylesheet) ->
      "<link rel=\"stylesheet\" href=\"/assets/stylesheets/#{stylesheet}.css\">"
    .join('')
