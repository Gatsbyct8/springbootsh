$(document).ready(function(){
    // 移动到购物车图标弹出购物车栏
    $("a.a-shop-car,div.shop-car").mouseenter(function(){
      $("div.shop-car").css({"visibility":"visible","opacity":"1"});
    });
    $("a.a-shop-car,div.shop-car").mouseleave(function(){
        $("div.shop-car").css({"visibility":"hidden","opacity":"0"});
      });
    //移动到手机栏时出现手机推荐列表  
    $("a.d-phone,div.phone-commend").mouseenter(function(){
      $("div.phone-commend").css({"visibility":"visible","opacity":"1"});
    });
    $("a.d-phone,div.phone-commend").mouseleave(function(){
        $("div.phone-commend").css({"visibility":"hidden","opacity":"0"});
    });
    // 点击搜索栏取消文字推荐并出现推荐列表
    $("input").focus(function(){
        $("a.commend").hide(500);
        $("div.commend-list").css("display","");
      });
    $("input").blur(function(){
        $("div.commend-list").css("display","none");
        $("a.commend").show(500);
      });
});