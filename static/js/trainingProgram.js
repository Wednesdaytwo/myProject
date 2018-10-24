/**
 * Created by web on 2018/10/14.
 */
var vm;
$(function () {
    vm = new Vue({
        el:"#pxxmList",
        data:function(){
            return{
                list:[],
                familyInfo:[]
            }
        },
        created(){
            this.getList();
        },
        methods:{
            getList(){
                $.ajax({
                    url: "train/list",
                    type: "get",
                    dataType: "json",
                    success: function (res) {
                        vm.list = res.data;
                        vm.familyInfo = res.family;
                    }
                })
            }
        }
    })
})