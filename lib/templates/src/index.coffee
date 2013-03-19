express = require 'express'
home = require './controllers/home_controller'
simulator = require './controllers/simulate_time_controller'
#simulator = require './controllers/simulate_distance_controller'
http = require 'http'
config = require './app_config'
emiter = require './emiter'

app = express()
config.app_config(app,express)

app.get '/', (req, res) ->
  res.render('./index')
app.post '/loc', home.loc
app.get '/sim', simulator.sim_time
app.get '/oauth2callback', (req, res) ->
  res.render('./google')
app.post '/gettoken', home.token

server = http.createServer(app)
server.listen app.get('port'), () ->
  console.log "Express server listening on port " + app.get('port')

io = require('socket.io').listen(server)
lsocket = null

#register all on event AFTER connection
io.sockets.on 'connection', (socket) ->
  lsocket = socket
  socket.on 'step_up', (data) ->
    simulator.go_time(data)

emiter.on 'status', (data) ->
  lsocket.emit 'status', data
