module.exports.brand = module.exports.b = (brand) ->
  brands =
    api: 'API'
    csv: 'CSV'
    json: 'JSON'
    instagram: 'Instagram'
    haskell: 'Haskell'
    r: 'R'

  brands[brand] || throw "Brand not found brand #{brand}"
