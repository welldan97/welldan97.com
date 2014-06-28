module.exports.pageStylesheets = (context) ->
  stylesheets = context.pageAssetsCollection(context, 'stylesheets')
  stylesheets
    .map (stylesheet) ->
      "<link rel=\"stylesheet\" href=\"/assets/stylesheets/#{stylesheet}.css\">"
    .join('')
