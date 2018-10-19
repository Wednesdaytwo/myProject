/**
 * Created by web on 2018/10/17.
 */
var vm;
$(function(){
    var url  = window.location.search;
    var id = url.split("=")[1]
    vm = new Vue({
        el:"#list",
        data:function(){
            return{
                data:[],
                imgs:[]
            }
        },
        created(){
          this.getList(id)
        },
        methods:{
            getList(id){
                $.ajax({
                    url:"server/list/",
                    type:"get",
                    data:`id=${id}`,
                    dataType:"json",
                    success: function (res) {
                        vm.data = res.data[0];
                        vm.imgs = res.imgs
                        console.log(vm.imgs)
                    }
                })
            }
        }
    })
})

