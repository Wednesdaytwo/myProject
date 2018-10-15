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
                            for(var i=0;i<res.data.length;i++){
                                var item = res.data[i]
                                var id = item.id;
                                var img = {};
                                var k = 0;
                                for(var j =0;j<res.img_data.length;j++){
                                    var val = res.img_data[j]
                                    if(val.cid==id){
                                        img[k]=val.img_data;
                                        k++
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
})