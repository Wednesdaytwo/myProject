/**
 * Created by web on 2018/10/14.
 */
var vm;
$(function () {
    vm = new Vue({
            el:"#ReviewTxt",
            data:function(){
                return{
                    list:[],
                }
            },
            created(){
                this.getList();
            },
            methods:{
                getList(){
                    $.ajax({
                        url: "comment/list",
                        type: "get",
                        dataType: "json",
                        success: function (res) {
                            //评论图片处理
                            for(var i=0;i<res.data.length;i++){
                                var item = res.data[i]
                                var id = item.id;
                                var img = [];
                                for(var j =0;j<res.img_data.length;j++){
                                    var val = res.img_data[j]
                                    if(val.cid==id){
                                        img.push(val.img_data);
                                    }
                                }
                                item.img=img
                            }
                            vm.list = res.data
                        }
                    })
                }
            }
        })
    //评分
    $("ul#score").on("click","[data-target=li-item]", function () {
        $(this).addClass("mColor").siblings().removeClass("mColor")
        if($(this).parent().attr('id')=="server")
            $("#serverVal").val($(this).html())
        if($(this).parent().attr('id')=="teacher")
            $("#teacherVal").val($(this).html())
        if($(this).parent().attr('id')=="environment")
            $("#environmentVal").val($(this).html())
        if($(this).parent().attr('id')=="taste")
            $("#tasteVal").val($(this).html())
    })
})