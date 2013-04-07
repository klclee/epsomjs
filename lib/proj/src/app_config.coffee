assets = require 'connect-assets'
path = require 'path'
database = require './database'

exports.app_config = (app, express) ->
  app.use assets()
  console.log path.join(__dirname, 'images')
  app.set 'port', process.env.PORT || 3000
  app.set 'views', __dirname + '/views'
  app.use '/images',express.static(path.join(__dirname, 'images'))
  app.set 'view engine', 'jade'
  app.use express.favicon()
  app.use express.logger('dev')
  app.use express.bodyParser()
  app.use express.methodOverride()
  app.use express.cookieParser('your secret here')
  app.use express.session()
  app.use app.router
  if app.get('env') == 'development'
    database.db_init 'localhost', '27017', '<proj name here>'
    app.use express.errorHandler()