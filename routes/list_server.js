/**
 * Created by web on 2018/10/17.
 */
const express = require("express")
var pool = require("../pool.js")
var router = express.Router();

router.get("/list",(req,res)=>{
    var id = req.query.id;
    var obj={};
    (async function(){
        var sql="SELECT `id`, `title`, `details` FROM `zw_server` WHERE id = ?"
        await new Promise(function (open) {
            pool.query(sql,[id],(err,result)=>{
                if(err) throw err
                obj.data = result;
                open()
            })
        })
        var sql = "SELECT `id`, `sid`, `img` FROM `zw_server_data` WHERE sid = ?"
        await new Promise(function (open) {
            pool.query(sql,[id],(err,result)=>{
                if(err) throw err
                obj.imgs = result;
                open()
            })
        })
        res.send(obj)
    })()
})
module.exports = router;