sys = require("sys")
exec = require('child_process').exec;

server = exec("node_modules/coffee-script/bin/coffee server/server.coffee")

client = exec("ruby -run -e httpd -- -p 5000 client/")
