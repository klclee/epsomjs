mongoose = require 'mongoose'

database = null
# add your mongo model def here
# user_schema = mongoose.Schema {
#                               email: String
#                               access_token: String
#                               expires_in: Number
#                               id_token: String
#                               refresh_token: String
#                               }

module.exports =
  {
  db_init: (host, port, db_name) ->
    unless database?
      console.log "connecting to #{db_name}"
      server_options = {'auto_reconnect': true, 'poolSize': 5}
      database = mongoose.connect('mongodb://' + host + ':' + port + '/' + db_name, server_options);
  db_model: (model_name) ->
    mongoose.model(model_name, user_schema)
  db_close: () ->
    database.close()

  }

