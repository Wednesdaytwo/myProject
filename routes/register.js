/**
 * Created by web on 2018/10/9.
 */
const express = require("express")
var md5=require("md5")
var pool = require("../pool.js")
var router = express.Router();
    router.post("/register",(req,res)=>{
        var $uname = req.body.uname;
        var $upwd = md5(req.body.upwd);
        var $uemail = req.body.uemail;
        var $phone = req.body.phone;
        (async function(){
            var sql = "SELECT COUNT(uid) as num FROM `zw_user` WHERE `uname` = ?";
            await  new Promise(function (open) {
                pool.query(sql,[$uname],(err,result)=>{
                    if(err) throw err;
                    if(result[0].num==0)
                        open()
                    else {
                        res.send({code: 0, msg: "用户名重复,请重新输入"})
                        return
                    }
                })
            })

            var sql = "INSERT INTO `zw_user`( `uname`, `upwd`, `email`, `phone`) VALUES (?,?,?,?)";
            await  new Promise(function (open) {
                pool.query(sql,[$uname,$upwd,$uemail,$phone],(err,result)=>{
                    if(err) throw err;
                    if(result.affectedRows>0)
                        res.send({code:1,msg:"注册成功"})
                    else
                        res.send({code:0,msg:"注册失败"})
                })
            })

        })()

    })
    //登录操作
    router.post("/login",(req,res)=>{
        var $uname = req.body.uname;
        var $upwd = md5(req.body.upwd);
        var sql="SELECT COUNT(uid) as num FROM `zw_user` WHERE `uname` = ? AND `upwd` = ?";
        pool.query(sql,[$uname,$upwd],(err,result)=>{
            if(err) throw err
            if(result[0].num>0)
                res.send({code:1,msg:"登录成功"})
            else
                res.send({code:0,msg:"登录失败,用户名或者密码错误"})
        })
    })
module.exports=router;