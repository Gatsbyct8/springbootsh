$(function(){
    $("div.nav-item").hide();
    $len=$("ul.nav").find("li.hover").length;
    for(var i=0;i<$len;i++){
        $("ul.nav").find("li.hover").eq(i).mouseenter(function(){
            $(this).next().show();       
        }).mouseleave(function(){
            $(this).next().hide();
        })
    }
    $("div.nav-item").mouseenter(function(){
        $(this).show()
    }).mouseleave(function(){
        $(this).hide()
    })
});