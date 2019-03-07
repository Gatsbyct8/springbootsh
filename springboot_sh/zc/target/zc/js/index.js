(async function(){
    var res=await ajax({
        url:"http://localhost:3000/index/",
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