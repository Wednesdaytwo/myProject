/**
 * Created by web on 2018/10/9.
 */
$(function(){
    //验证用户名
    //验证密码
    //验证邮箱
    //验证电话

    $("#register-btn").click(function(){
        var uname = $("#uname").val()
        var upwd1 = $("#upwd1").val()
        var upwd2 = $("#upwd2").val()
        var uemail = $("#uemail").val()
        var phone = $("#phone").val()

        var reg = /^0?1[3|4|5|8][0-9]\d{8}$/;//电话
        var filter  = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        var PassTxt = /^[a-zA-Z][A-Za-z0-9_]{5,8}$/;
        if(!PassTxt.test(uname)){
            alert("用户名必须是长度6-8个字符，格式为字母和数字的组合。");
            $("#uname").focus();
            return false;
        }
        if(upwd1 != upwd2){
            alert("两次密码输入不一致！");
            $("#upwd1").focus();
            return false;
        }
        if(!reg.test(phone)){
            alert("请输入正确手机号码！");
            $("#phone").focus();
            return false;
        }


    })
})