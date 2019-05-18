<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!doctype html>
<html>

<head>
    <link rel="shortcut icon" href="images/tubiao01.jpg" type="image/x-icon" />
    <meta charset="utf-8">
    <!-- <script src="https://cdn.bootcss.com/jquery/1.7/jquery.min.js"></script> -->
    <link rel="stylesheet" href="../../css1/public.css">
    <link rel="stylesheet" href="../../css1/header.css">
    <link rel="stylesheet" href="../../css1/footer.css">
    <script src="../../js1/jquery-3.2.1.js"></script>
    <script src="../../js1/header.js"></script>
    <script src="../../js/My97DatePicker/WdatePicker.js"></script>
    <script type="text/javascript" src="../../js/jquery.min.js"></script>
    <title>INBEAUTY-我的账户</title>

    <style>
        a{text-decoration:none;}
        dody{margin:0;}
        /*nav1*/
        .nav1{width: 1200px;margin: 0 auto;line-height: 33px;font-size: 12px;background-color:#f2f2f2;}
        .nav1 a{color: #393939;text-decoration: none;}
        .huanying{float: left;}
        .huanying a:nth-child(2),.huanying a:nth-child(4){color: #ec3e7d;}
        .huanying a:nth-child(2):hover{text-decoration: underline;}
        .huanying a:nth-child(4):hover{text-decoration: underline;}
        .guanzhu,.text{float: right;}
        .guanzhu a{line-height: 33px;padding: 0 10px;float: left;position: relative;}
        .guanzhu a:nth-child(2),.guanzhu a:nth-child(3){width: 18px;height: 18px;margin: 7px 2px;box-sizing: border-box;}
        .guanzhu a:nth-child(2){background-image: url(images/weibo.png);background-repeat: no-repeat;}
        .guanzhu a:nth-child(3){background-image:url(images/wiexin.png);background-repeat: no-repeat;}


        .text{line-height: 33px;margin-right: 40px;}

        .zhanghu{line-height: 33px;text-align: center;width: 100px;float: left;}
        .zhanghu a{text-decoration: none;display: block;}
        .zhanghu a:hover{background-color:#E7E7E7;}
        .zhanghu a{background-image:url(images/wode.png);background-repeat: no-repeat;padding-left: 20px;background-position:2px center;}
        .gouwuche{line-height: 33px;text-align: center;width: 100px;float: left;}
        .gouwuche a{text-decoration: none;display: block;}
        .gouwuche a:hover{background-color:#E7E7E7;}
        .gouwuche a{background-image:url(images/gouwuche.png);background-repeat: no-repeat;padding-left: 20px;background-position:2px center;}
        .shoucang{line-height: 33px;text-align: center;width: 100px;float: left;}
        .shoucang a{text-decoration: none;display: block;}
        .shoucang a:hover{background-color:#E7E7E7;}
        .shoucang a{background-image:url(images/shoucang.png);background-repeat: no-repeat;padding-left: 20px;background-position:2px center;}
        .zhannei{line-height: 33px;text-align: center;width: 100px;float: left;}
        .zhannei a{text-decoration: none;display: block;}
        .zhannei a:hover{background-color:#E7E7E7;}
        .guanzhu .ziji1{width: 100px;height: 100px;background-image: url(images/weibo2.png);position: absolute;top: 30px;left: -10px;display: none;}
        .guanzhu a:hover .ziji1{display: block;}
        .guanzhu .ziji2{width: 100px;height: 100px;background-image:url(images/weixin2.png);position: absolute;top: 30px;left: -10px;display: none;}
        .guanzhu a:hover .ziji2{display: block;}

        /*nav2*/
        .nav2 .nav a:nth-child(2){color:#ec3e7d;}
        .nav2{width: 1200px;clear: both;margin:0 auto;overflow: hidden;height: 133px;}
        .logo{width:247px;font-size: 14px;color:#636363;letter-spacing:10px;text-align:center;float: left;}
        .nav02{width: 442px;line-height: 36px;border: 4px #ec3e7d solid; float: right;margin-right:380px;margin-top: 10px;}
        .nav02 a{float: right;text-decoration: none;color: #FFFFFF;background-color: #ec3e7d;width: 58px;height: 46px;text-align: center;padding-top: 5px;box-sizing: border-box;}
        .nav{margin-left:0;margin-top: 36px;letter-spacing: 5px;float: left;}
        .nav a{text-decoration: none;color: #000000;margin-right: 40px;font-size: 18px;font-weight: bold;}
        .nav a:hover{color:#ec3e7d; }

        .round_icon{
            width:247px;color:#636363;float: left;margin-left: 300px;
            border-radius: 50%;
        }

        .main {
            margin-top: 10px;
        }
        .user-name {
            padding-left: 500px;
            margin-top: 10px;
        }
        .phone-no {
            padding-left: 500px;
            margin-top: 10px;
        }
        .email-input {
             margin-left: 16px;
        }
        .sex-input {
            margin-left: 26px;
        }
        form{
            /*width:450px;*/
            /*margin: 30px auto 0px;*/
            /*border: 2px solid #C40000;*/
        }
        table{
            margin: 0px auto 0px;
        }
        .tds{
            text-align: left;
            font-size:16px;
        }
        td{
            padding-top:10px;
        }
        input[type='text'],input[type='password']{
            width:150px;
            height:22px;
            border: 1px solid #cccccc;
        }
        input[name='valistr']{
            width:80px;
        }

        input[type='submit']{
            background-image: url("images/zcan01.jpg");
            width:127px;
            height:44px;
            border-style:none;
            font-size:20px;
            color:white;
            font-weight:bold;
        }
        input[type='submit']:hover{
            background-image: url("images/zcan02.jpg");
        }
        span{
            color:red;
            font-size:14px;
        }

        /*字体设计*/
        .price{font-size:20px;font-family:"微软雅黑";color:red;}
        .yuanjia{font-size:12px;font-family:"微软雅黑";color:gray;}
        .count{font-size:16px;font-family:"微软雅黑";color:red;}
        .didian{font-size:18px;font-family:"微软雅黑";color:#ee9c23;}
        .liang,.salenum{font-size:16px;font-family:"微软雅黑";}
        .ljqg{font-size:24px;font-family:"微软雅黑";color:white;}
        .active{font-size:18px;color:black;font-family:"微软雅黑";}
        .mbhf a,.cz a{font-size:16px;font-family:"微软雅黑";color:black;}
        .fenlei_lable,.pinpai_lable,.gongxiao_lable{margin-top:30px;margin-left:50px;font-weight:bold;}
        .fenlei_lable,.pinpai_lable,.gongxiao_lable{font-size:20px;}
        .flppgxpx1 a,.flppgxpx2 a ,.flppgxpx3 a{color:black;font-size:16px;margin-left:110px;}
        .fenlei_lable:hover,.pinpai_lable:hover,.gongxiao_lable:hover{color:red;}
        .cz{
            display: none;
        }

        /*页脚*/
        .footer{width: 1200px;margin: 0 auto;overflow: hidden;font-size: 14px;margin-top: 100px}
        .footer dl{float: left;width: 200px;padding-top: 50px;padding-bottom: 50px;}
        .footer dt{font-weight: bold;font-size: 20px;margin-bottom: 10px;color:#333333;}
        .fonter dd{line-height:30px;color:#666666; }
        .footer a{color: #000000;text-decoration: none;}
        .footer a:hover{text-decoration: underline;}
        .erweima22{margin:70px 0;position: relative;}
        .erweima22 span:nth-child(1){position: absolute;left: 900px;font-size: 12px;}
        .erweima22 span:nth-child(2){position: absolute;left: 1080px;font-size: 12px;}

        /*页脚2*/
        .yejiao2{background-color: #000000;width: 1920px; clear: both;height: 100px;}
        .yejiao22{width: 1200px;margin: 0 auto;position: relative}
        .yejiao22 a:nth-child(1){color: #FFFFFF;font-size: 12px;position: absolute;top: 30px;left:-25px;}
        .yejiao22 a:nth-child(2){color: #FFFFFF;font-size: 12px;position: absolute;top: 30px;left: 60px;}
        .yejiao22 a:nth-child(3){color: #FFFFFF;font-size: 12px;position: absolute;top: 30px;left: 125px;}
        .yejiao22 a:nth-child(4){color: #FFFFFF;font-size: 12px;position: absolute;top: 30px;left: 190px;}
        .yejiao22 a:nth-child(5){color: #FFFFFF;font-size: 12px;position: absolute;top: 30px;left: 255px;}
        .yejiao22 a:nth-child(6){color: #FFFFFF;font-size: 12px;position: absolute;top: 30px;left: 320px;}
        .yejiao22 a:nth-child(7){color: #FFFFFF;font-size: 12px;position: absolute;top: 30px;left: 380px;}
        .yejiao22 a:nth-child(8){color: #FFFFFF;font-size: 12px;position: absolute;top: 30px;left: 465px;}
        .yejiao22 a:nth-child(9){color: #FFFFFF;font-size: 12px;position: absolute;top: 30px;left: 526px;}
        .yejiao22 a:nth-child(10){color: #FFFFFF;font-size: 12px;position: absolute;top: 30px;left:586px;}
        .yejiao22 a:nth-child(11){color: #FFFFFF;font-size: 12px;position: absolute;top: 60px;left:-25px;}
        .yejiao22 a:hover{text-decoration: underline;}

        /*右边栏*/
        .bianlan{z-index: 1; position: fixed;top:0;right:0;height: 100%; padding: 0 20px;box-sizing: border-box;box-shadow: 0px 3px 8.55px 0.45px rgba(0,0,0,0.18);width: 38px;background-color: #4c4c4c;}
        .bianlan a{color: #FFFFFF;}
    </style>
</head>
    <script type="text/javascript">
      function button_click_name() {
    	  var username=$("#username").val();
    	  console.log(username);
    	  var userId=$("#userId").val();
    	  $.ajax(
    	      {
    	          type:'get',
    	          url : 'http://localhost:8095/personalCenter/username/'+userId+'/'+username,
    	          dataType : 'jsonp',
    	          jsonp:"callback",
    	          success  : function(data) {
    	        	  if(data.status==200){
    	        		  $username.val(data.data);
    	        	  }
    	        	  else {
    	        		  alert('修改失败');
    	        	  }
    	            
    	          },
    	          error : function() {
    	              alert('修改失败');
    	          }
    	      }
    	  );
    	  }
      
    	 </script>
    	  <script type="text/javascript">
    	   function button_click_phone() {
        	  var $phone=$("#phone");
        	  var phone=$phone.val();
        	  var userId=$("#userId").val();
        	  $.ajax(
        	      {
        	          type:'get',
        	          url : 'http://localhost:8095/personalCenter/phone/update/'+userId+'/'+phone,
        	          dataType : 'jsonp',
        	          jsonp:"callback",
        	          success  : function(data) {
        	        	  if(data.status==200){
        	        		  $phone.val(data.data);
        	        	  }
        	        	  else {
        	        		  alert('修改失败');
        	        	  }
        	            
        	          },
        	          error : function() {
        	              alert('修改失败');
        	          }
        	      }
        	  );
        	  }
    	  </script>
<!--完成出生日期的选择--需写在</body>前-->



<body>
<!--nav1-->
<nav>
        <!-- 导航 -->
        <div class="container">
            <ul>
                 <li><a href="/index.html" title="在线商城" style="color: #e5e5e5;font-weight: 800;">首页</a></li>
                <li><a href="/cart/show.html" title="坚果Pro 2S">我的购物车</a></li>
                <li><a href="/myuser/center.html" title="坚果 R1">个人中心</a></li>
                <li><a href="/order/list.html" title="坚果 TNT 工作站">历史订单</a></li>
                <li><a href="login.html" title="登录">登录</a></li>
                <li><a href="regist.html" title="注册">注册</a></li>
            </ul>
        </div>
        <!-- 导航 -->
        <!-- 用户登录与购物车 --
        <ul>
            <li>
                <a href="#"></a>
            </li>
            <div>
                <li>
                    <a href="#" class="a-shop-car"></a>
                    <!-虚的 -->
                    <div class="shop-car">
                        <!-- 实的 -->
                        <div class="shopcar-list">
                            <div>
                                <div class="shopcar-img">
                                    <h3>购物车为空</h3>
                                    <p>您还没有选购任何商品，快去商城选购吧</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </div>
        </ul>
        <!-- 用户登录与购物车 -->
    </nav>
    <!-- 第二行导航 -->
    
<style>

    .page{
        display: flex;
    }
    .left_slide{
        flex: 1;
    }
    .cpfl_liebiao_box{
        flex: 4;
    }
</style>

<div class="main">
    <img src="images/100.jpg" class="round_icon"  alt="">
    <div class="user-name">
        <label>用户名：</label><input type="text" name="username" id="username" value="${user.username }">
        <input type="hidden" name="userId" id="userId" value="${user.userId }" />
        <button type="button" onclick="button_click_name()">修改</button>
    </div>
    <div class="phone-no">
        <label>手机号：</label><input type="text" name="phone" id="phone" value="${user.phone }"/>
        <button type="button" onclick="javascript:button_click_phone();">修改</button>
    </div>
<%--<tr>--%>
    <%--<td class="tds">用户名：</td>--%>
    <%--<td><input type="text" name="username" id="username" value="${user.username }"/>--%>
        <%--<input type="hidden" name="userId" id="userId" value="${user.userId }" />--%>
    <%--<button type="button" onclick="button_click_name()">修改</button>--%>
    <%--</td>--%>
<%--</tr>--%>
<%--<tr>--%>
    <%--<td class="tds">手机号：</td>--%>
    <%--<td><input type="text" name="phone" id="phone" value="${user.phone }"/></span><button type="button" onclick="javascript:button_click_phone();">修改</button></td>--%>
<%--</tr>--%>
</div>

<form action="/myuser/personalCenter/updateUserDetail" method="POST" >
    <div class="phone-no">
        <label>邮箱：</label><input type="text" name="email" class="email-input" value="${ userDetail.email}">
    </div>
    <div class="phone-no">
        <label>出生日期:</label><input type="date" style="width:150px;" name="birthday" value="${ userDetail.birthday}"/>
    </div>
    <div class="phone-no">
        <label>性别:</label><input type="radio" name="sex" value="男" class="sex-input" checked="'男'.equals(${userDetail.sex})?checked:unchecked"/>男
        <input type="radio" name="sex" value="女" />女
    </div>
    <div class="phone-no">
        <input type="submit" value="提交"/>
    </div>
<%--<table>--%>
    <%--<tr>--%>
        <%--<td class="tds">邮箱：</td>--%>
        <%--<td><input type="text" name="email" value="${ userDetail.email}"></td>--%>
    <%--</tr>--%>
    <%--<tr class="odd">--%>
        <%--<td>出生日期:</td>--%>
        <%--<td>--%>
            <%--<input type="text" style="width:150px;" name="birthday" value="${ userDetail.birthday}"--%>
                  <%--onclick="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:true,readOnly:true,maxDate:'#F{$dp.$D(\'StopTime_date\')}',onpicked:pickedFunc})--%>
<%--"/>--%>
        <%--</td>--%>
    <%--</tr>--%>
    <%--<tr>--%>
        <%--<td class="tds">性别:</td>--%>
        <%--<td>--%>
            <%--<input type="radio" name="sex" value="男" checked="'男'.equals(${userDetail.sex})?checked:unchecked"/>男--%>
            <%--<input type="radio" name="sex" value="女" />女--%>

        <%--</td>--%>
    <%--</tr>--%>
    <%--<tr>--%>
        <%--<td colspan="2">--%>
            <%--<input type="submit" value="提交"/>--%>
        <%--</td>--%>
    <%--</tr>--%>
<%--</table>--%>
</form>


<script> 
    function pickedFunc(){
        var updateFlag = $.trim($("input[name='updateFlag']").val());//页面修改操作
        if ($dp.cal.currFocus.id == "StartTime_date") {
            $dp.$('StartTime_date').value=$dp.cal.getP('y')+"-"+$dp.cal.getP('M')+"-"+$dp.cal.getP('d');
            if (updateFlag == "false") {// 只有添加操作才实行联动，时间自动填充为当前时间
                $dp.$('StartTime_hour').value=$dp.cal.date.H;
                $dp.$('StartTime_second').value=$dp.cal.date.m;
            }
        }
    }
</script>






<!--页脚部分-->


<script>
    $(document).ready(function () {
        $(".cz_anniu").toggle(
            function () {
                $(".cz").css({
                    "display": "block"
                });
            },
            function () {
                $(".cz").css({
                    "display": "none"
                });
            }

        );
    })
</script>
<footer>
        <div class="container">
            <div class="list">
                <ul>
                    <li>
                        <h3>订单服务</h3>
                        <ul>
                            <li><a href="#">购买指南</a></li>
                            <li><a href="#">支付方式</a></li>
                            <li><a href="#">送货政策</a></li>
                        </ul>
                    </li>
                    <li>
                        <h3>服务支持</h3>
                        <ul>
                            <li><a href="#">售后服务</a></li>
                            <li><a href="#">维修门店</a></li>
                            <li><a href="#">零售门店</a></li>
                        </ul>
                    </li>
                    <li>
                        <h3>自助服务</h3>
                        <ul>
                            <li><a href="#">热点资讯</a></li>
                            <li><a href="#">预约购买</a></li>
                            <li><a href="#">订单物流</a></li>
                        </ul>
                    </li>
                    <li>
                        <h3>媒体中心</h3>
                        <ul>
                            <li><a href="#">新闻动态</a></li>
                            <li><a href="#">官方视频</a></li>
                            <li><a href="#">图片资源</a></li>
                        </ul>
                    </li>
                    <li>
                        <h3>关于公司</h3>
                        <ul>
                            <li><a href="#">公司简介</a></li>
                            <li><a href="#">加入我们</a></li>
                            <li><a href="#">荣誉奖项</a></li>
                        </ul>
                    </li>
                    <li>
                        <h3>关注我们</h3>
                        <ul>
                            <li><a href="#">新浪微博</a></li>
                            <li><a href="#">官方微信</a></li>
                            <li><a href="#">联系我们</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="help">
                    <li class="tel">400-626-5666</li>
                    <li class="time">周一到周日 9:00 - 18:00</li>
                    <li class="desc">(仅收取市话费)</li>
                    <li class="line-help">
                        <a href="#">
                            在线帮助
                        </a>
                    </li>
                </ul>
                <div class="language">
                    <ul>
                        <h3><a href="#">中文</a></h3>
                    </ul>
                </div>
            </div>
            <div class="copy">
                    <h4>Copyright © 2018, Smartisan Digital Co., Ltd. All Rights Reserved.</h4>
                    <h5>北京锤子数码科技有限公司</h5>
                    <ul class="privacy">
                        <li><a href="#">法律声明</a></li>
                        <li><a href="#">隐私条款</a></li>
                        <li><a href="#">开发者中心</a></li>
                    </ul>
                    <h6>
                        <a href="#">
                            <span>京 ICP 备 14041720 号 - 1</span>
                            <span>京 ICP 证 140622 号</span>
                            <span>京公网安备 11010502025474</span>
                        </a>
                        <a href="#">
                            <span>网络文化经营许可证京网文 (2016) 2284 - 266 号</span>
                        </a>
                    </h6>
            </div>
        </div>
        
    </footer>
</body>

</html>