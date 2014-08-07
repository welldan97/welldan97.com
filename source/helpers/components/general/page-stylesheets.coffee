module.exports.pageStylesheets = ->
  context.pageAssets 'stylesheets', (stylesheet) ->
    """
    <link rel="stylesheet" href="/assets/stylesheets/#{stylesheet}.css"/>
    """
