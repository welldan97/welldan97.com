module.exports.shareOnTwitter = (url, text) ->
  "https://twitter.com/share?url=#{encodeURIComponent(url)}&text=#{encodeURIComponent(url)}"
