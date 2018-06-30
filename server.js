var express = require("express");
var bodyParser = require("body-parser");
var mysql = require("mysql");
var path = require("path");

var PORT = process.env.PORT || 8080;
var app = express();

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

app.listen(PORT, function() {
    console.log("App listening on PORT: " + PORT);
})

