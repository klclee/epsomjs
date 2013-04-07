express = require 'express'
http = require 'http'
config = require './app_config'

app = express()
config.app_config(app,express)

app.get '/', (req, res) ->
  res.render('./index')
