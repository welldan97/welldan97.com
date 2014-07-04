module.exports.pageJavascripts = ->
  javascripts = context.pageAssetsCollection('javascripts')
  javascripts
    .map (javascript) ->
      "<script src=\"/assets/javascripts/#{javascript}.js\"></script>"
    .join('')
