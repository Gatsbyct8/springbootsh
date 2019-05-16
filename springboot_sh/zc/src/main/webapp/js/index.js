(async function(){
    var res=await ajax({
        url:"http://localhost:8090/index/",
        type:"get",
        dataType:"json"
    });
    //
    new Vue({
      el:"#main>div:nth-child(2)>h3:first-child",
      data:{
        res
      }
    })
})();