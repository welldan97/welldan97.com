module.exports.pageStylesheets = ->

  stylesheets = context.stylesheets || []
  pageSpecificStylesheets = context.pageSpecificStylesheets || []

  stylesheetsHTML = stylesheets
    .map (stylesheet) ->
      """
      <link rel="stylesheet" href="/assets/stylesheets/#{stylesheet}.css">
      </link>
      """
    .join('')

  pageSpecificStylesheetsHTML = pageSpecificStylesheets
    .map (stylesheet) ->
      """
      <link rel="stylesheet" href="/assets/stylesheets/#{stylesheet}.css">
      </link>
      """
    .join('')

  "#{stylesheetsHTML}<!-- PAGE SPECIFIC -->#{pageSpecificStylesheetsHTML}"
