$(function(){
    if(location.search.indexOf("lid=")!=-1){
       var lid=location.search.split("=")[1];
       //console.log(lid);
        var res=await .ajax({
            url:'http://localhost:3000/details',
            type:"get",
            dataType:"json",
            data:`lid=${lid}`
        });
        //console.log(res);
        var {product,spec,pics}=res;
        //console.log(product,spec,pics);
        //var {title,subtitle,price,promise}=product;
        new Vue({
          el:"#main>div:nth-child(2)>div:nth-child(1)",
          data:{
            product,
            spec,
            pics
          }
        })
        var $ul=document.querySelector("#div-lg+div>div>ul");
        $ul.style.width=`${62*pics.length}px`;
        var mImg=document.querySelector(
          "#preview>div>img"
        );
        mImg.src=pics[0].md;
        var $lg=document.getElementById("div-lg");
        $lg.style.backgroundImage=`url(${pics[0].lg})`;
      }
      var $prev=$("#div-lg").next().children("img:first");
      var $next=$prev.next().next();
      $ul=$prev.next().children();
      var length=$ul.children().length;
      var move=0,LIWIDTH=62;
      $prev.click(function(){
        $prev=$(this);
        if(!$prev.is(".disabled")){
          move--;
          console.log(move);
          $ul.css("marginLeft",-move*LIWIDTH);
          $next.removeClass("disabled");
          if(move==0){
            $prev.addClass("disabled");
          }
        }
      })
      $next.click(function(){
        var $next=$(this);
        if(!$next.is(".disabled")){
          move++;
          //console.log(move);
          $ul.css("marginLeft",-move*LIWIDTH);
          $prev.removeClass("disabled");
          if(length-4==move){
            $next.addClass("disabled");
          }
        }
      })
      //实现小图片切换
      var $mImage=$("#preview>div>img");
      var $lgImage=$("#div-lg");
      $ul.on("mouseover","img",function(){
        $img=$(this);
        var md=$img.attr("data-md");
        $mImage.attr("src",md);
        $lgImage.css("backgroundImage", url(${$img.attr("data-lg")}));
      })
      //实现放大镜的移动
      //console.log($mImage);
      $mask=$("#mask"),$smask=$("#super-mask");
      //console.log($mask);
      $smask.hover(function(){
        $mask.toggleClass("d-none");
        $lgImage.toggleClass("d-none");
      }).mousemove(function(e){
        var MSIZE=176,SMSIZE=352;
        var MAX=SMSIZE-MSIZE;
        var top=e.offsetY-MSIZE/2;
        var left=e.offsetX-MSIZE/2;
        if(top<0) top=0;else if(top>MAX)  top=MAX;
        if(left<0) left=0; else if(left>MAX) left=MAX;
        $mask.css({
          top:top,
          left:left
        })
        $lgImage.css("backgroundPosition",`${-16/7*left}px ${-16/7*top}px`);
      })
      
      var $btn_sub=$("div#count");
      $btn_sub.on("click","button",function(){
          var $btn=$(this);
          var txt=$("#change123").val();
          alert(txt);
          //console.log(txt);
          if($btn.html()=="-"){
              //alert("减");
              if(txt>0){
                  txt--;
                  $("#change123").val(txt);
              }
          }
          if($btn.html()=="+"){
              txt++;
              $("#change123").val(txt);
              //alert("加");
          }
      })
      
       $("#Tocart123").click(function(){
    	var num=document.getElementById('change123').value;
    	alert(num);
    	var commodityId='${commodity.commodityId}';
    	alert(commodityId);
    	var url="cart/add/"+commodityId+"?num="num;
        location.href=url;
    })
  
});