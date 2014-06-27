module.exports.pageJavascripts = (options) ->
  javascripts = options.pageAssetsCollection(options, 'javascripts')
  javascripts
    .map (javascript) ->
      "<script src=\"/assets/javascripts/#{javascript}.js\"></script>"
    .join('')
