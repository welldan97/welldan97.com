  module.exports.pageJavascripts = (concatName) ->
    context.pageAssets concatName, 'javascripts', (javascript) ->
      "<script src=\"/assets/javascripts/#{javascript}.js\"></script>"
