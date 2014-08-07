module.exports =
  isEnvironment: (environment) ->
    process.env.ENVIRONMENT == environment
