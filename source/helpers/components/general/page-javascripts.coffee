module.exports.pageJavascripts = (concatName) ->
  javascripts = context.javascripts || []
  pageSpecificJavascripts = context.pageSpecificJavascripts || []

  javascriptsHTML = javascripts
    .map (javascript) ->
      "<script src=\"/assets/javascripts/#{javascript}.js\"></script>"
    .join('\n')

  pageSpecificJavascriptsHTML = pageSpecificJavascripts
    .map (javascript) ->
      "<script src=\"/assets/javascripts/#{javascript}.js\"></script>"
    .join('\n')

  """

  <!-- build:js /assets/javascripts/#{concatName}.js -->
    #{javascriptsHTML}
  <!-- endbuild -->
  #{pageSpecificJavascriptsHTML}
  """
