<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Document</title>
<link rel="stylesheet" href="../../css/bootstrap.css">
<link rel="stylesheet" href="../../css/base.css">
<link rel="stylesheet" href="../../css/index.css">
<link rel="stylesheet" href="../../css1/public.css">
<link rel="stylesheet" href="../../css1/header.css">
<link rel="stylesheet" href="../../css1/footer.css">
<!-- <link rel="stylesheet" href="css/public1.css">
    <link rel="stylesheet" href="css/style.css"> -->
<script src="../../js1/jquery-3.2.1.js"></script>
<script src="../../js1/header.js"></script>
<script src="../../js/vue.js"></script>
<script src="../../js/nav.js"></script>
<style>
[v-cloak] {
	display: none;
}

.heigth-banner {
	height: 388px;
}
</style>
<!--  <style>
  body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,form,fieldset,input,textarea,p,blockquote,th,td {margin:0;padding:0;} 
table {border-collapse:collapse;border-spacing:0;} 
fieldset,img {border:0} 
address,caption,cite,code,dfn,em,strong,th,var {font-style:normal;font-weight:normal} 
ol,ul {list-style:none} 
a{text-decoration:none}
caption,th {text-align:left} 
h1,h2,h3,h4,h5,h6 {font-size:100%;font-weight:normal} 
q:before,q:after {content:''} 
abbr,acronym { border:0}
button{outline:none;}
.outer { zoom:1; }
.outer:after {
     clear:both;
     content:'';
     display:block;
     width:0;
     height:0;
     visibility:hidden; }
.clearfix{
    clear:both;
}
  ul.nav{
    background-color: #000;
    width: 100%;
    display: flex;
    justify-content: space-around;
}
ul.nav>li{
    float: left;
    padding-top: 10px;
    padding-bottom: 10px;
}
nav{
    position: relative;
    z-index: 100;
}
span{
    color: #fff;
}
div.nav-item{
    background-color: rgba(0, 0, 0, 0.1);
    width: 100%;
    position: absolute;
    padding-top: 17px;
    top: 25px;
}
div.nav-item span{
    border: 1px solid #000;
    color: #000;
    padding: 5px;
}
div.nav-item li{
    width: 20%;
    float: left;
    text-align: center;
    padding-top: 10px;
    padding-bottom: 10px;
}
  </style> -->
</head>
<body>
	<header>
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
                    <!-- 虚的 -->
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
		<div class="nav-sub">
			<div class="contain">
				<ul>
					<li><a href="index.html" class="active">首页</a></li>
				</ul>
				<div class="nav-search">
					<div class="search">
					<a href=""></a>
						<form action="/searchFirst" class="search-form">
						   <button type="submit">搜</button>
							<input type="text" maxlength="10" name="q" id="">
							<div>
								<a href="" class="commend">小米6摄像头 2899起</a>
							</div>
						</form>
						<!-- 点击显示推荐列表 -->
						<div class="commend-list" style="display: none;">
							<div>
								<span></span>
							</div>
							<ul>
								<li><span>坚果Pro 2S</span></li>
								<li><span>坚果3</span></li>
								<li><span>移动电源</span></li>
								<li><span>手机套</span></li>
								<li><span>无线充电器</span></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>

	<!--     <nav>
   
        <ul class="nav clearfix">
            <li class="hover"><a href="#"><span>手机</span></a></li>
            <div class="nav-item outer">
                    <ul>
                        <li><a href="#"><span>111</span></a></li>
                        <li><a href="#"><span>111</span></a></li>
                        <li><a href="#"><span>111</span></a></li>
                        <li><a href="#"><span>111</span></a></li>
                        <li><a href="#"><span>111</span></a></li>
                        <li><a href="#"><span>111</span></a></li>
                    </ul>
            </div>
            <li class="hover"><a href="#"><span>电脑</span></a></li>
            <div class="nav-item outer">
                    <ul>
                        <li><a href="#"><span>222</span></a></li>
                        <li><a href="#"><span>222</span></a></li>
                        <li><a href="#"><span>222</span></a></li>
                    </ul>
            </div>
            <li class="hover"><a href="#"><span>游戏机</span></a></li>
            <div class="nav-item outer">
                    <ul>
                        <li><a href="#"><span>333</span></a></li>
                        <li><a href="#"><span>333</span></a></li>
                        <li><a href="#"><span>333</span></a></li>
                        <li><a href="#"><span>333</span></a></li>
                        <li><a href="#"><span>333</span></a></li>
                        <li><a href="#"><span>333</span></a></li>
                        <li><a href="#"><span>333</span></a></li>
                        <li><a href="#"><span>333</span></a></li>
                    </ul>
            </div>
            <li class="hover"><a href="#"><span>食品</span></a></li>
            <div class="nav-item outer">
                    <ul>
                        <li><a href="#"><span>444</span></a></li>
                        <li><a href="#"><span>444</span></a></li>
                        <li><a href="#"><span>444</span></a></li>
                        <li><a href="#"><span>444</span></a></li>
                        <li><a href="#"><span>444</span></a></li>
                        <li><a href="#"><span>444</span></a></li>
                    </ul>
            </div>
            <li class="hover"><a href="#"><span>酒水</span></a></li>
            <div class="nav-item outer">
                    <ul>
                        <li><a href="#"><span>555</span></a></li>
                        <li><a href="#"><span>555</span></a></li>
                        <li><a href="#"><span>555</span></a></li>
                    </ul>
            </div>
        </ul>
       
    </nav> -->
	<main id="main" class="container">
	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<c:forEach items="${commodityList}" var="commodity" begin="0"
					end="0">
					<a href="product_details/${commodity.commodityId}"> <img
						class="d-block w-100 heigth-banner"
						src="http:${commodity.commodityBigImage}" alt="First slide">
					</a>
				</c:forEach>

			</div>
			<div class="carousel-item">
				<c:forEach items="${commodityList}" var="commodity" begin="1"
					end="1">
					<a href="product_details/${commodity.commodityId}"> <img
						class="d-block w-100 heigth-banner"
						src="http:${commodity.commodityBigImage}" alt="First slide">
					</a>
				</c:forEach>
				</a>
			</div>
			<div class="carousel-item">
				<c:forEach items="${commodityList}" var="commodity" begin="2"
					end="2">
					<a href="product_details/${commodity.commodityId}"> 
					<img
						class="d-block w-100 heigth-banner"
						src="http:${commodity.commodityBigImage}" alt="First slide">
					</a>
				</c:forEach>
				</a>
			</div>
			<div class="carousel-item">
				<c:forEach items="${commodityList}" var="commodity" begin="3"
					end="3">F
					<a href="product_details/${commodity.commodityId}"> <img
						class="d-block w-100 heigth-banner"
						src="http:${commodity.commodityBigImage}" alt="First slide">
					</a>
				</c:forEach>
				</a>
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
	<div>
		<h3 class="pb-3">
			<nav
				class="navbar navbar-light border-bottom border-secondary pb-0 mb-2">
				<a class="navbar-brand" href="#"> <img
					src="img/index/computer_icon.png" class="d-inline-block align-top"
					alt=""> 首页推荐 / 1F
				</a>
			</nav>
		</h3>
		<h3 class="pb-3">
			<nav
				class="navbar navbar-light border-bottom border-secondary pb-0 mb-2">
				<a class="navbar-brand" href="#"> <img
					src="img/index/computer_icon.png" class="d-inline-block align-top"
					alt=""> 最新上架 / 2F
				</a>
			</nav>
			<div class="row mb-2">
				<div class="col-md-7">
					<div class="card border-0 flex-md-row box-shadow h-md-250">
						<c:forEach items="${commodityList}" var="commodity" begin="4"
							end="4">
							<div class="card-body d-flex flex-column align-items-start">
								<h5 class="d-inline-block mb-2">${commodity.name}</h5>

								<span class="text-primary">￥${commodity.price}</span> <a
									class="btn btn-primary"
									href="product_details/${commodity.commodityId}">查看详情</a>
							</div>
							<img class="card-img-right flex-auto d-none d-md-block"
								data-src="holder.js/200x250?theme=thumb"
								alt="Thumbnail [200x250]"
								src="http:${commodity.commodityBigImage}"
								data-holder-rendered="true">
						</c:forEach>
					</div>
					
				</div>
				<div class="col-md-5">
						<div class="card border-0 flex-md-row box-shadow h-md-250">
							<c:forEach items="${commodityList}" var="commodity" begin="5"
								end="5">
								<div class="card-body d-flex flex-column align-items-start">
									<h5 class="d-inline-block mb-2">${commodity.name}</h5>

									<span class="text-primary">￥${commodity.price}</span> <a
										class="btn btn-primary"
										href="product_details/${commodity.commodityId}">查看详情</a>
								</div>
								<img class="card-img-right flex-auto d-none d-md-block"
									data-src="holder.js/200x250?theme=thumb"
									alt="Thumbnail [200x250]"
									src="http:${commodity.commodityBigImage}"
									data-holder-rendered="true">
							</c:forEach>
						</div>
					</div>
				  
       		</div>
	       <div class="row mb-2">
	         <div class="col-md-5">
	           <div class="card border-0 flex-md-row box-shadow h-md-250">
	           <c:forEach items="${commodityList}" var="commodity" begin="6"
							end="6">
	             <div class="card-body d-flex flex-column align-items-start">
	            
	               <h5 class="d-inline-block mb-3">${commodity.name }</h5>
	               <span class="text-primary">¥${commodity.price }</span>
	               <a class="btn btn-primary" href="product_details/7">查看详情</a>
	             </div>
	             <img class="card-img-right flex-auto d-none d-md-block mt-5" data-src="holder.js/200x250?theme=thumb" alt="Thumbnail [200x250]"src="http://${commodity.commodityBigImage }" data-holder-rendered="true">
	           </c:forEach>
	           </div>
	         </div>
	         <div class="col-md-7">
	           <div class="row pr-3">
	           <c:forEach items="${commodityList}" var="commodity" begin="7"
							end="9">
	             <div class="col-md-4 p-0 pl-2">
	               <div class="card border-0 text-center">
	                 <img class="card-img-top" src="http://${commodity.commodityBigImage }" alt="Card image cap">
	                 <div class="card-body p-0 pr-1 pl-1">
	                   <span class="d-inline-block">${commodity.name }</span>
	                   <span class="text-primary small">¥${commodity.price }</span>
	                   <a class="btn btn-sm btn-primary" href="product_details/8">查看详情</a>
	                 </div>
	               </div>
	             </div>
	             </c:forEach>
	             <!-- <div class="col-md-4 p-0 pl-2">
	               <div class="card border-0 text-center">
	                 <img class="card-img-top" src="http://img11.360buyimg.com/n1/jfs/t6970/238/2045425792/134058/1683f5fb/598824afNa8f01cc7.jpg" alt="Card image cap">
	                 <div class="card-body p-0 pr-1 pl-1">
	                   <span class="d-inline-block">联想小新700 电竞版游戏本家规格爱国会过海恶化爱国IE和更好玩IE活该认购gas海恶化爱国IE和更好</span>
	                   <span class="text-primary small">¥6299.00</span>
	                   <a class="btn btn-sm btn-primary" href="product_details/9">查看详情</a>
	                 </div>
	               </div>
	             </div>
	             <div class="col-md-4 p-0 pl-2">
	               <div class="card border-0 text-center">
	                 <img class="card-img-top" src="http://img12.360buyimg.com/n1/jfs/t11671/104/1335587910/174847/7b68bbf/5a0034b1N4834afc5.jpg" alt="Card image cap">
	                 <div class="card-body p-0 pr-1 pl-1">
	                   <span class="d-inline-block">戴尔灵越燃7000 轻薄窄边</span>
	                   <span class="text-primary small">¥5199.00</span>
	                   <a class="btn btn-sm btn-primary" href="product_details.html?lid=19">查看详情</a>
	                 </div>
	               </div>
	             </div>
	           -->
	            </div>
	         </div>
	       </div>
		</h3>

	</div>
	<ul class="nav nav-pills nav-fill mb-3">
		<li class="nav-item"><a class="nav-link" href="#"> <img
				src="img/footer/icon1.png">
				<h6 class="text-muted">品质保障</h6>
		</a></li>
		<li class="nav-item"><a class="nav-link" href="#"> <img
				src="img/footer/icon2.png">
				<h6 class="text-muted">私人订制</h6>
		</a></li>
		<li class="nav-item"><a class="nav-link" href="#"> <img
				src="img/footer/icon3.png">
				<h6 class="text-muted">学员特供</h6>
		</a></li>
		<li class="nav-item"><a class="nav-link" href="#"> <img
				src="img/footer/icon4.png">
				<h6 class="text-muted">专属特权</h6>
		</a></li>
	</ul>
	<div class="btn-group-vertical position-fixed" role="group"
		aria-label="Basic example">
		<button type="button"
			class="btn btn-secondary btn-sm border-light border-left-0 border-right-0">
			首页<br>推荐
		</button>
		<button type="button"
			class="btn btn-secondary btn-sm border-light border-left-0 border-right-0">
			最新<br>上架
		</button>
		<button type="button"
			class="btn btn-secondary btn-sm border-light border-left-0 border-right-0">
			热销<br>单品
		</button>
	</div>
	</main>
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
					<li class="line-help"><a href="#"> 在线帮助 </a></li>
				</ul>
				<div class="language">
					<ul>
						<h3>
							<a href="#">中文</a>
						</h3>
					</ul>
				</div>
			</div>
			<div class="copy">
				<h4>Copyright © 2018, Smartisan Digital Co., Ltd. All Rights
					Reserved.</h4>
				<h5>北京锤子数码科技有限公司</h5>
				<ul class="privacy">
					<li><a href="#">法律声明</a></li>
					<li><a href="#">隐私条款</a></li>
					<li><a href="#">开发者中心</a></li>
				</ul>
				<h6>
					<a href="#"> <span>京 ICP 备 14041720 号 - 1</span> <span>京
							ICP 证 140622 号</span> <span>京公网安备 11010502025474</span>
					</a> <a href="#"> <span>网络文化经营许可证京网文 (2016) 2284 - 266 号</span>
					</a>
				</h6>
			</div>
		</div>

	</footer>
	<script src="js/jquery-3.2.1.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/ajax.js"></script>
	<script src="js/index.js"></script>
	<script src="js/header.js"></script>
	<script src="js/footer.js"></script>
</body>
</html>