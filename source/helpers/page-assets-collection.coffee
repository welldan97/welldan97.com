module.exports.pageAssetsCollection = (options, type) ->
  page = options.page
  assets = page.data[type] || []

  dirname = page.dirname
      .replace(new RegExp("#{options.config.build}/?"), '')

  defaultPageAsset = if dirname == ''
    "#{page.basename}"
  else
    "#{dirname}/#{page.basename}"

  assets.push(defaultPageAsset)
  assets
