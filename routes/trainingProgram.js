/**
 * Created by web on 2018/10/16.
 */
const express = require("express")
var pool = require("../pool.js")
var router = express.Router();

router.get("/list",(req,res)=>{
    (async function(){
        var obj = {}
        await new Promise(function (open) {
            var sql="SELECT `pid`,`pname` FROM `zw_pxxm_family`";
            pool.query(sql,[],(err,result)=>{
                if(err) throw err;
                obj.family = result;
                open()
            })
        })
        await new Promise(function(open){
            var sql = "SELECT `id`, `family_id`, `title`, `info`, `img` FROM `zw_pxxm`";
            pool.query(sql,[],(err,result)=>{
                if(err) throw err;
                obj.data = result;
                open()
            })
        })
        res.send(obj)
    })()

})


module.exports=router;