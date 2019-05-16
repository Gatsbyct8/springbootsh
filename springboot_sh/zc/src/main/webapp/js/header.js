var vm;
$(function(){
    $(`<link rel="stylesheet" href="css/header.css">`).appendTo("head");
    $.ajax({
        url:"header.html",
        type:"get",
        success:function(res){
            $(res).replaceAll("#header");
            console.log('1111',res);
            vm=new Vue({
                el:"#header",
                data:{
                    isLogin:false,
                    kw:""
                },
                methods:{
                    search_click(){
                        location.href=`http://localhost:8090/products.html?kw=${this.kw}`;
                    }
                },
                watch:{
                    kw(){
                        console.log(`查询:${this.kw}的商品`);
                    }
                }
            })
            var $search=$("#header>nav>div>div>div>img");
            var $input=$search.parent().prev();
            
            $input.keyup(function(e){
                if(e.keyCode==13){
                    $search.click();
                }
            })
            if(location.search.indexOf("kw=")!=-1){
                var kw=location.search.split("=")[1];
                $input.val(decodeURI(kw));
            }
        }
    })
})