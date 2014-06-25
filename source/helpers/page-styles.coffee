module.exports.pageStyles = (page, config) ->
  dirname = page.dirname
      .replace(new RegExp("#{config.build}/?"), '')

  if dirname == ''
    "/assets/stylesheets/#{page.basename}.css"
  else
    "/assets/stylesheets/#{dirname}/#{page.basename}.css"
