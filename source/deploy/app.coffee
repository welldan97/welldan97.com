connect = require('connect')
http = require('http')
serveStatic = require('serve-static')

PORT = 9000
DOMAIN = 'welldan97.dev'

app = connect()

subdomainsMiddleware = require('./connect/subdomains_middleware')(DOMAIN)

app.use(subdomainsMiddleware)
app.use(serveStatic('site'))

http.createServer(app).listen PORT
