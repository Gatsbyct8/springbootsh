$(function(){
    function loadPage(pno=0){
        if(location.search.indexOf("kw=")!=-1){
            var kw=decodeURI(location.search.split("=")[1]);
            //console.log(kws);
            $.ajax({
                url:"http://localhost:3000/products/",
                type:"get",
                data:{
                    kw,pno
                },
                dataType:"json",
                success:function(data){
                    var {pno,pageCount,products}=data;
                    var html=``;
                    for(var p of products){
                        var {title,md,price,lid}=p;
                        //console.log(title,md,price);
                        html+=`<div class="col-md-4 p-1">
                        <div class="card mb-4 box-shadow pr-2 pl-2">
                          <a href="product_details.html?lid=${lid}">
                            <img class="card-img-top" src="${md}">
                          </a>
                          <div class="card-body p-0">
                            <h5 class="text-primary">￥${price.toFixed(2)}</h5>
                            <p class="card-text">
                              <a href="product_details.html?lid=${lid}" class="text-muted small" title="${title}">${title}</a>
                            </p>
                            <div class="d-flex justify-content-between align-items-center p-2 pt-0">
                              <button class="btn btn-outline-secondary p-0 border-0" type="button">-</button>
                              <input type="text" class="form-control p-1" value="1">
                              <button class="btn btn-outline-secondary p-0 border-0" type="button">+</button>
                              <a class="btn btn-primary float-right ml-1 pl-1 pr-1" href="cart.html" data-lid="${lid}">加入购物车</a>
                            </div>
                          </div>
                        </div>
                      </div>`;
                    }
                    $("#plist").html(html);
                    html=`<li class="page-item"><a class="page-link bg-transparent" href="#">上一页</a></li>`;
                    for(var i=1;i<=pageCount;i++){
                        html+=`<li class="page-item ${pno==i-1?"active":""}"><a class="page-link ${pno!=i-1?"bg-transparent":"border"} " href="#">${i}</a></li>`;
                    }
                    html+=`<li class="page-item"><a class="page-link bg-transparent" href="#">下一页</a></li>`;
                    var $page=$(".pagination");
                    $page.html(html);
                    //加载完内容后，修改上一页下一页
                    if(pno==0){
                        $page.children(":first").addClass("disabled");
                    }
                    if(pno==pageCount-1){
                        $page.children(":last").addClass("disabled");
                    } 
                }
            })
        }
    }
    loadPage();
    //单击跳转功能
    $(".pagination").on("click","a",function(e){
        e.preventDefault();
        $a=$(this);
        if(!$a.parent().is(".disabled,.active")){
            var act=parseInt($(".pagination>li.active>a").html());
            //console.log(act);
            if($a.html()=="上一页"){
                var pno=act-2;
            }else if($a.html()=="下一页"){
                var pno=act;
            }else{ 
                var pno=$a.html()-1;             
            }
            //console.log(pno);
            loadPage(pno);
        }
    })
    //购物车加减效果
    var $btn_sub=$("div#plist");
    $btn_sub.on("click","button",function(){
        var $btn=$(this);
        var txt=$btn.siblings("input").val();
        //console.log(txt);
        if($btn.html()=="-"){
            //alert("减");
            if(txt>0){
                txt--;
                $btn.siblings("input").val(txt);
            }
        }
        if($btn.html()=="+"){
            txt++;
            $btn.siblings("input").val(txt);
            //alert("加");
        }
    })
})