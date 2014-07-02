module.exports.brand = module.exports.b = (brand) ->
  brands =
    api: 'API'
    csv: 'CSV'
    json: 'JSON'
    instagram: 'Instagram'
    haskell: 'Haskell'
    loess: 'loess'
    r: 'R'

  # TODO: smarter fetch
  brands[brand] || throw "Brand not found brand #{brand}"
