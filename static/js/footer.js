$(function(){
    $(`<link rel="stylesheet" href="css/footer.css">`).appendTo("head");
    $.ajax({
        url:"footer.html",
        type:"get",
        success: function (res) {
            $(res).replaceAll("#footer")
        }
    })
})/**
 * Created by Administrator on 2018/9/15.
 */
