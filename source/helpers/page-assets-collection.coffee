module.exports.pageAssetsCollection = (options, type) ->
  page = options.page
  assets = page.data[type] || []
  assets.concat(pageSpecificAssets(page, options.config.build))


pageSpecificAssets = (page, build) ->
  dirname = page.dirname.replace(new RegExp("#{build}/?"), '')

  if dirname == ''
    ["#{page.basename}"]
  else
    ["#{dirname}/#{page.basename}", dirname]
