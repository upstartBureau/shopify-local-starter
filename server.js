// simple static server for preview deployment
const Static = require('node-static')
const http = require('http')

let file = new Static.Server('./dist')

var PORT = process.env.NODE_ENV === 'development' ? 1337 : 80

http.createServer((req, res) => {
  req.addListener('end', () => {
    file.serve(req, res)
  }).resume()
}).listen(PORT)
