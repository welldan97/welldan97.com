module.exports.shareOnTwitter = (url, text) ->
  params = "url=#{encodeURIComponent(url)}&text=#{encodeURIComponent(url)}"

  "https://twitter.com/share?#{params}"
