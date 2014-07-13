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

  <!-- build:css #{pageSpecificPath()} -->
    #{pageSpecificStylesheetsHTML}
  <!-- endbuild -->
  """

pageSpecificPath = ->
  filename = "#{context.page.dirname}/#{context.page.basename}"
  "/assets/stylesheets/pages/#{filename}.css"
