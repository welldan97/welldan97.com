connect = require('connect')
http = require('http')
serveStatic = require('serve-static')

PORT = process.env.PORT
DOMAIN = 'welldan97.com'

app = connect()

subdomainsMiddleware = require('./connect/subdomains_middleware')(DOMAIN)

app.use(subdomainsMiddleware)
app.use(serveStatic('site'))

http.createServer(app).listen PORT
