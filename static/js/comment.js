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
                        url: "http://localhost:8000/comment/list",
                        type: "get",
                        dataType: "json",
                        success: function (res) {
                            vm.list = res.data
                        }
                    })
                }
            }
        })
})