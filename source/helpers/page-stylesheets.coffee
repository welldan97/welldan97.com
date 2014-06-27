module.exports.pageStylesheets = (options) ->
  stylesheets = options.pageAssetsCollection(options, 'stylesheets')
  stylesheets
    .map (stylesheet) ->
      "<link rel=\"stylesheet\" href=\"/assets/stylesheets/#{stylesheet}.css\">"
    .join('')
