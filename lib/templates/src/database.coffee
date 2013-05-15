mongoose = require 'mongoose'
config = require '../config/database.json'

database = null

#This is a example model definition. Can be a in seperate file to load in
user_model = mongoose.Schema
  name: String
  password: String
  location: String

module.exports =
{
  db_init: (envSt) ->
    unless database?
      env = config[envSt]
      console.log "connecting to #{env.host} at #{env.port} on #{env.databaseName}"
      server_options = {'auto_reconnect': true, 'poolSize': 5}
      database = mongoose.connect('mongodb://' + env.host + ':' + env.port + '/' + env.databaseName, server_options);
  db_model: (model_name) ->
    mongoose.model model_name, eval "#{model_name}_model"
  db_close: () ->
    database.close()

}
