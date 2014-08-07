  module.exports.pageJavascripts = ->
    context.pageAssets 'javascripts', (javascript) ->
      "<script src=\"/assets/javascripts/#{javascript}.js\"></script>"
