/**
 * Created by web on 2018/10/14.
 */
const express = require("express")
var pool = require("../pool.js")
var router = express.Router();

router.get("/list",(req,res)=>{
    var uid = req.query.uid
    var obj={};
    (async function(){
        //查询全部评论
        //var sql="select y.id,y.name,x.sales,x.month,x.year from yaopin y inner join xiaoshou x on y.id=x.yid where x.yid=1";
        var sql = "SELECT c.id, c.evaluation, c.server, c.teachers,c.environment, c.taste, c.project, c.content,c.inputime ,u.uname , u.avatar FROM zw_comment c,zw_user u WHERE u.uid = c.uid";
        await new Promise(function (open) {
            pool.query(sql,[],(err,result)=>{
                if(err) throw err
                obj.data = result;
                open()
            })
        })
        res.send(obj)
    })()
})




module.exports=router;