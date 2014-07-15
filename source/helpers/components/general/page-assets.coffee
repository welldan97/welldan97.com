_ = require('lodash')

_.str = require('underscore.string')
_.mixin(_.str.exports())


module.exports.pageAssets = (concatName, type, element) ->
  assetsKey = _(['main'].concat(context.pageDir()))
    .findLast (dir) ->
      context[dir]?[type]

  assets = context[assetsKey][type]

  pageSpecificAssets = context["pageSpecific#{_.capitalize(type)}"] || []
  assetsHTML = assets.map(element).join('\n')

  pageSpecificAssetsHTML = pageSpecificAssets.map(element).join('\n')
  """

  <!-- build:#{ext(type)} /assets/#{type}/#{concatName}.#{ext(type)} -->
    #{assetsHTML}
  <!-- endbuild -->

  <!-- build:#{ext(type)} #{pageSpecificPath()} -->
    #{pageSpecificAssetsHTML}
  <!-- endbuild -->
  """

pageSpecificPath = ->
  filename = "#{context.page.dirname}/#{context.page.basename}"
  "/assets/assets/pages/#{filename}.css"

ext = (type) ->
  {
    stylesheets: 'css'
    javascripts: 'js'
  }[type]
