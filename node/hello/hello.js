var express = require('express');
const { devNull } = require('os');
var app = express();

app.get('/', function (req, res) {
    res.send("Hello Node Js")
});

app.listen(8000, function () {
    console.log("8000 Port : Server Started~!!")
});