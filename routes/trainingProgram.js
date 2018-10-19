/**
 * Created by web on 2018/10/16.
 */
const express = require("express")
var pool = require("../pool.js")
var router = express.Router();

router.get("/list",(req,res)=>{
    var sql="SELECT `id`, `title`, `info`, `img` FROM `zw_pxxm`";
    pool.query(sql,[],(err,result)=>{
       if(err) throw err;
        res.send(result)
    })
})


module.exports=router;