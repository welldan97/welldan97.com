module.exports.pageStylesheets = (concatName) ->

  stylesheets = context.stylesheets || []
  pageSpecificStylesheets = context.pageSpecificStylesheets || []

  stylesheetsHTML = stylesheets
    .map (stylesheet) ->
      """
      <link rel="stylesheet" href="/assets/stylesheets/#{stylesheet}.css"/>
      """
    .join('\n')

  pageSpecificStylesheetsHTML = pageSpecificStylesheets
    .map (stylesheet) ->
      """
      <link rel="stylesheet" href="/assets/stylesheets/#{stylesheet}.css"/>
      """
    .join('\n')

  """

  <!-- build:css /assets/stylesheets/#{concatName}.css -->
    #{stylesheetsHTML}
  <!-- endbuild -->
  #{pageSpecificStylesheetsHTML}
  """
