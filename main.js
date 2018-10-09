const express = require("express");
const bodyParser = require("body-parser");
const  index = require("./routes/index.js");

var app = express();
var server = app.listen(8000);
app.use(bodyParser.urlencoded({extended:false}));
app.use(express.static("static"))

app.use("/index",index)