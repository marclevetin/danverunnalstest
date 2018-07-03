var express = require("express");

var app = express();

var PORT = process.env.PORT || 8085;


var proutes = require("./controllers/passport.js");
require("./controllers/index.js")(app);
app.use(proutes);


var exphbs = require("express-handlebars");

app.engine("handlebars", exphbs({ defaultLayout: "main" }));
app.set("view engine", "handlebars");


app.listen(PORT, () => {
    console.log("App listening on PORT: " + PORT);
});
