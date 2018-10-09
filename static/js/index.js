var vm;
$(function(){
    vm = new Vue({
        el:"#container",
        data:function(){
            return {
                server:[],
                pno:"",
                pageCount:"",
                liClass:"active",
                student:[],
                authority:[],
                environment:[],
                link:[],
                cur:""//当前页码
            }
        },
        created(){
            this.getdata();
        },
        methods:{
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
            },
            changePic(){
                console.log("success")
            }
        }
    })
        var $prev = $("#prev");
        var $next = $("#next");
        var $ul=$prev.next().children();
        //var ul=document.querySelector("#environment>div>ul");
        //ul.style.width=`${251*8}px`;
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
        //var $ul =  $("#qwjg").children("div:last-child").children()
        //var moved=0,LIWIDTH=143;
        //setInterval(function(){
        //    moved++
        //    $ul.css("marginLeft",-LIWIDTH*moved);
        //},1000)
    function ScrollLeft(de,de1){

        var speed=20;
        var tab=document.getElementById("de");
        var tab1=document.getElementById("de1");
        var tab2=document.getElementById("de2");
        tab2.innerHTML=tab1.innerHTML;
        function Marquee(){
            if(tab2.offsetWidth-tab.scrollLeft<=0)
                tab.scrollLeft-=tab1.offsetWidth
            else{
                tab.scrollLeft++;
            }
        }
        var MyMar=setInterval(Marquee,speed);
        tab.onmouseover=function() {clearInterval(MyMar)};
        tab.onmouseout=function() {MyMar=setInterval(Marquee,speed)};
    }
})