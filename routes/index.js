const express = require("express")
var pool = require("../pool.js")
var router = express.Router();


router.get("/",(req,res)=>{
        var obj={};
        (async function(){
            var sql=`select id,title,subtitle,details,url,thumb from zw_server`;
            await new Promise(function(open){
                pool.query(sql,[],(err,result)=>{
                    if(err) throw err;
                    obj.pno=req.query.pno;//在结果对象中添加pno属性
                    //用查询结果的总数/4,上取整，获得总页数，放入结果data中
                    obj.pageCount=Math.ceil(result.length/4)
                    obj.server=result.slice(obj.pno*4,obj.pno*4+4);
                    open();
                })
            });
            var sql=`select id,title,pic from zw_student limit 6`;
            await new Promise(function(open){
                pool.query(sql,[],(err,result)=>{
                    if(err) throw err;
                    obj.student=result;
                    open();
                })
            });
            var sql=`select id,pic,url from zw_authority`;
            await new Promise(function(open){
                pool.query(sql,[],(err,result)=>{
                    if(err) throw err;
                    obj.authority=result;
                    open();
                })
            });
            var sql=`select id,pic,url from zw_link`;
            await new Promise(function(open){
                pool.query(sql,[],(err,result)=>{
                    if(err) throw err;
                    obj.link=result;
                    open();
                })
            });
            var sql=`select id,title,pic from zw_environment`;
            await new Promise(function(open){
                pool.query(sql,[],(err,result)=>{
                    if(err) throw err;
                    obj.environment=result;
                    open();
                })
            });
            res.send(obj);
        })()
})

module.exports=router;
