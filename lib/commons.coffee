module.exports =
  isEnvironment: (environment) ->
    (process.env.ENVIRONMENT == undefined && environment == 'development') ||
    process.env.ENVIRONMENT == environment
