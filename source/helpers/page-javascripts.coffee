module.exports.pageJavascripts = (context) ->
  javascripts = context.pageAssetsCollection(context, 'javascripts')
  javascripts
    .map (javascript) ->
      "<script src=\"/assets/javascripts/#{javascript}.js\"></script>"
    .join('')
