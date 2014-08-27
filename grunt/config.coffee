isEnvironment = require('../lib/commons').isEnvironment

build = if isEnvironment('development')
  'build'
else
  'temp/build'

domain = process.env.DOMAIN || if isEnvironment('development')
  'welldan97.dev'
else
  'welldan97.com'

module.exports =
  source: 'source'
  build: build
  productionBuild: 'build'
  vendor: 'vendor'
  temp: 'temp'
  deploy: 'temp/deploy'

  port: 9000
  domain: domain
  heroku:
    auth: process.env.HEROKU_AUTH
    app: process.env.HEROKU_APP

  googleAnalytics:
    userId: process.env.GA_USER_ID
