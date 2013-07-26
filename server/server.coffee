app = require("http").createServer(handler)
io = require("socket.io").listen(app)
fs = require("fs")

app.listen 3000

handler = (req, res) ->
  fs.readFile __dirname + "/index.html", (err, data) ->
    if err
      res.writeHead 500
      return res.end("Error loading index.html")
    res.writeHead 200
    res.end data

io.sockets.on "connection", (socket) =>
  socket.emit "video", stream: "data"
