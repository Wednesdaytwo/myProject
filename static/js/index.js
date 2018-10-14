var vm;
$(function(){
    vm = new Vue({
        el:"#container",
        data:function(){
            return {
                server:[],//特色服务
                pno:"",//页码
                pageCount:"",//有多少页
                liClass:"active",
                student:[],//学员风采
                authority:[],//权威机构
                environment:[],//环境介绍
                link:[],//友情链接
                cur:""//当前页码
            }
        },
        created(){
            this.getdata();
        },
        methods:{
            //分页函数
            getdata(pno=0){
                $.ajax({
                    url: "http://localhost:8000/index/",
                    type: "get",
                    data: {pno},
                    dataType: "json",
                    success: function (data) {
                        var {server,student,authority,environment,link,pno,pageCount}=data;
                        vm.server=server;
                        vm.student=student;
                        vm.authority=authority;
                        vm.environment=environment;
                        vm.link=link;
                        vm.pageCount=pageCount;
                        vm.pno=pno;
                        vm.cur=parseInt(pno);
                    }
                })
            }
        }
    })
    //环境介绍切换下一张 jQuery实现
    var $prev = $("#prev");//上一页
    var $next = $("#next");//下一页
    var $ul=$prev.next().children();
    var moved=0,LIWIDTH=251;
    $prev.click(function(){
        $prev=$(this)
        if(!$prev.is(".disabled")){
            moved--;
            $ul.css("marginLeft",-LIWIDTH*moved);
            $next.removeClass("disabled");
            if(moved==0)
                $prev.addClass("disabled")
        }
    })
    $next.click(function(){
        var $next=$(this);
        if(!$next.is(".disabled")){
            moved++;
            $ul.css("marginLeft",-LIWIDTH*moved);
            $prev.removeClass("disabled");
            if($ul.children().length-5==moved){
                $next.addClass("disabled");
            }
        }
    })
})