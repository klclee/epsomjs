mongoose = require 'mongoose'

database = null

module.exports =
  {
  db_init: (host, port, db_name) ->
    unless database?
      console.log "connecting to #{db_name}"
      server_options = {'auto_reconnect': true, 'poolSize': 5}
      database = mongoose.connect('mongodb://' + host + ':' + port + '/' + db_name, server_options);
  db_model: (model_name) ->
  db_close: () ->
    database.close()

  }

