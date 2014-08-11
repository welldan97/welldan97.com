isEnvironment = require('../lib/commons').isEnvironment

build = if isEnvironment('development')
  'build'
else
  'temp/build'

module.exports =
  source: 'source'
  build: build
  productionBuild: 'build'
  vendor: 'vendor'
  temp: 'temp'
  deploy: 'temp/deploy'

  port: 9000
  domain: 'welldan97.dev'
  heroku:
    auth: process.env.HEROKU_AUTH
    app: process.env.HEROKU_APP
    apiKey: process.env.HEROKU_API_KEY
