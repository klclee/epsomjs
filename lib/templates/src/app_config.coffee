assets = require 'connect-assets'
path = require 'path'
database = require './database'
raw = require 'raw'

exports.app_config = (app, express) ->
  app.use assets()
  app.set 'port', process.env.PORT || 3000
  app.set 'views', path.resolve(__dirname, '..', 'assets/views')
  app.use '/images', express.static(path.resolve(__dirname, '..', 'assets/img'))
  app.set 'view engine', 'raw'
  app.engine 'html', raw.__express
  app.use express.favicon()
  app.use express.logger('dev')
  app.use express.bodyParser()
  app.use express.methodOverride()
  app.use express.cookieParser('your secret here')
  app.use express.session()
  app.use app.router
  database.db_init(app.get('env'))
  if app.get('env') == 'development'
    app.use express.errorHandler()