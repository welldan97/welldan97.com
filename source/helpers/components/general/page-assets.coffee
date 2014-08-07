_ = require('lodash')
fs = require('fs')

_.str = require('underscore.string')
_.mixin(_.str.exports())


module.exports.pageAssets = (type, element) ->
  assetsKey = _(['main'].concat(context.pageDir()))
    .findLast (dir) ->
      context[dir]?[type]

  assets = context[assetsKey][type]

  pageSpecificAssets = context["pageSpecific#{_.capitalize(type)}"] || []
  concatName = "/assets/#{type}/#{assetsKey}.#{ext(type)}"

  cacheAndVerify "#{assetsKey}.#{ext(type)}", assets, (stored) ->
    assetsHTML = if stored
      "\n#{element(assetsKey)}"
    else if _.any(assets)
      """

        <!-- build:#{ext(type)} #{concatName} -->
          #{assets.map(element).join('\n')}
        <!-- endbuild -->
      """
    else
      ''

    pageSpecificAssetsHTML = if _.any(pageSpecificAssets)
      """

      <!-- build:#{ext(type)} #{pageSpecificPath(type)}.#{ext(type)} -->
        #{pageSpecificAssets.map(element).join('\n')}
      <!-- endbuild -->
      """
    else
      ''
    assetsHTML + pageSpecificAssetsHTML


pageSpecificPath = (type) ->
  filename = context.pageDir().join('-')
  "/assets/#{type}/#{filename}"

ext = (type) ->
  {
    stylesheets: 'css'
    javascripts: 'js'
  }[type]


cacheAndVerify = (name, data, cb) ->
  dir = "#{context.config.temp}/page-assets-process"
  fs.mkdirSync dir unless fs.existsSync dir
  path = "#{dir}/#{name}"

  if fs.existsSync path
    storedData = fs.readFileSync path, 'utf8'
    unless JSON.stringify(data) == storedData
      throw new Error("Cached \"#{name}\" is not the same")
    cb(true)
  else
    fs.writeFileSync(path, JSON.stringify(data))
    cb(false)
