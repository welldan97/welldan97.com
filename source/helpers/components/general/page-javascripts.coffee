module.exports.pageJavascripts = ->
  javascripts = context.javascripts || []
  pageSpecificJavascripts = context.pageSpecificJavascripts || []

  javascriptsHTML = javascripts
    .map (javascript) ->
      "<script src=\"/assets/javascripts/#{javascript}.js\"></script>"
    .join('')

  pageSpecificJavascriptsHTML = pageSpecificJavascripts
    .map (javascript) ->
      "<script src=\"/assets/javascripts/#{javascript}.js\"></script>"
    .join('')

  "#{javascriptsHTML}<!-- PAGE SPECIFIC -->#{pageSpecificJavascriptsHTML}"
