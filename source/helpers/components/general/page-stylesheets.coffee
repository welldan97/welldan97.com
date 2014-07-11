module.exports.pageStylesheets = ->

  stylesheets = context.stylesheets || []
  pageSpecificStylesheets = context.pageSpecificStylesheets || []

  stylesheetsHTML = stylesheets
    .map (stylesheet) ->
      """
      <link rel="stylesheet" href="/assets/stylesheets/#{stylesheet}.css"/>
      """
    .join('')

  pageSpecificStylesheetsHTML = pageSpecificStylesheets
    .map (stylesheet) ->
      """
      <link rel="stylesheet" href="/assets/stylesheets/#{stylesheet}.css"/>
      """
    .join('')
  """
  <!-- !build:css test.css -->
  #{stylesheetsHTML}
  #{pageSpecificStylesheetsHTML}
  <!-- !endbuild -->
  """
