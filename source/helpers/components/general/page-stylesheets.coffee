module.exports.pageStylesheets = (concatName) ->
  context.pageAssets concatName, 'stylesheets', (stylesheet) ->
    """
    <link rel="stylesheet" href="/assets/stylesheets/#{stylesheet}.css"/>
    """
