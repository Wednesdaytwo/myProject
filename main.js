const express = require("express");
const bodyParser = require("body-parser");
const  index = require("./routes/index.js");
const  reg = require("./routes/register.js");
const  comment = require("./routes/comment.js");
const  train = require("./routes/trainingProgram.js");
const  list_server = require("./routes/list_server.js");
//加载配置跨域模块
const cors = require('cors');

var app = express();
var server = app.listen(8000);

//允许哪个地址跨域访问
app.use(cors({
    origin:['http://127.0.0.1:8000'],
    credentials:true
}))
app.use(bodyParser.urlencoded({extended:false}));
app.use(express.static("static"))

app.use("/index",index)
app.use("/reg",reg)
app.use("/comment",comment)
app.use("/train",train)
app.use("/server",list_server)