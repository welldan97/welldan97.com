module.exports.pageAssetsCollection = (context, type) ->
  page = context.page
  assets = page.data[type] || []
  assets.concat(pageSpecificAssets(page, context.config.build))


pageSpecificAssets = (page, build) ->
  dirname = page.dirname.replace(new RegExp("#{build}/?"), '')

  if dirname == ''
    ["#{page.basename}"]
  else
    ["#{dirname}/#{page.basename}", dirname]
