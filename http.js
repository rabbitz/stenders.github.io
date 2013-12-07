var fs = require("fs");
var port = 3000;
var express = require("express");

var app = express();
app.use(app.router); //use both root and other routes below
app.use(express.static(__dirname + "/")); //use static files in ROOT/public folder

app.listen(port);