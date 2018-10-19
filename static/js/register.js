$(function(){
    //new Vue({
    //    el:"#register",
    //    data:function(){
    //        return{
    //            isLogin:""
    //        }
    //    },
    //    created(){
    //
    //    },
    //    methods:{
    //        regSubmit(){
    //
    //        },
    //        loginSubmit(){
    //
    //        }
    //    }
    //})
    var reg = /^0?1[3|4|5|8][0-9]\d{8}$/;//电话
    var filter  = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;//邮箱
    var PassTxt = /^[a-zA-Z][A-Za-z0-9_]{5,8}$/;//用户名
    //用户注册
    $("#register-btn").click(function(){
        var uname = $("#uname").val()
        var upwd1 = $("#upwd1").val()
        var upwd2 = $("#upwd2").val()
        var uemail = $("#uemail").val()
        var phone = $("#phone").val()

        //验证用户名
        if(!PassTxt.test(uname)){
            alert("用户名必须是长度6-8个字符，格式为字母和数字的组合。");
            $("#uname").focus();
            return false;
        }
        //验证邮箱
        if(!filter.test(uemail)){
            alert("邮箱格式不正确")
            $("#uemail").focus();
            return false;
        }
        if(upwd1 != upwd2){
            alert("两次密码输入不一致！");
            $("#upwd1").focus();
            return false;
        }
        //验证手机号
        if(!reg.test(phone)){
            alert("请输入正确手机号码！");
            $("#phone").focus();
            return false;
        }
        $.ajax({
            url:"http://localhost:8000/reg/register",
            type:"post",
            data:`uname=${uname}&upwd=${upwd1}&uemail=${uemail}&phone=${phone}`,
            dataType:"json",
            success:function(res){
                if(res.code==1){
                    alert("注册成功")
                    location.href="login.html"
                }else{
                    alert(res.msg)
                }
            }
        })
    })
    //用户登录
    $("#login-btn").click(function () {
        var uname = $("#uname").val()
        var upwd = $("#upwd").val()
        //验证用户名
        if(!PassTxt.test(uname)){
            alert("用户名必须是长度6-8个字符，格式为字母和数字的组合。");
            $("#uname").focus();
            return false;
        }
        $.ajax({
            url:"reg/login",
            type:"post",
            data:`uname=${uname}&upwd=${upwd}`,
            dataType:"json",
            success:function(res){
                if(res.code==1){
                    var userData = res.obj.data[0];
                    console.log(userData)
                    var uid = userData.uid
                    var uname = userData.uname
                        localStorage.setItem("uid",uid)
                        localStorage.setItem("uname",uname)
                    alert("登录成功")
                    location.href="index.html"
                }else{
                    alert(res.msg)
                }
            }
        })
    })

})
