var express = require("express");
var bodyParser = require("body-parser");
var mysql = require("mysql");
var path = require("path");
var exphnd = require("express-handlebars");

var PORT = process.env.PORT || 8080;
var app = express();


app.use(express.static("views"));
//change views directory to public, and move CSS and other stuff to it. Compare to what's in public directory on cats activity

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

app.engine("handlebars", exphnd({ defaultLayout: "main" }));
app.set("view engine", "handlebars");

app.listen(PORT, function() {
    console.log("App listening on PORT: " + PORT);
})

