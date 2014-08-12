execSyncSilent = require('exec-sync')

module.exports = (log) ->
  (command) ->
    log "$ #{command}\n"

    output = execSyncSilent(command)
    log "#{output}\n\n"

    output
