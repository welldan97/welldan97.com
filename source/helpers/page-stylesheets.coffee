module.exports.pageStylesheets = ->
  stylesheets = context.pageAssetsCollection('stylesheets')
  stylesheets
    .map (stylesheet) ->
      "<link rel=\"stylesheet\" href=\"/assets/stylesheets/#{stylesheet}.css\">"
    .join('')
