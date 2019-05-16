<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>订单</title>

<link rel="stylesheet" href="../../css/reset.css">
<link rel="stylesheet" href="../../css/orders.css">
<style>
a {
	text-decoration: none;
}

img {
	display: block;
}

body {
	margin: 0;
	background-color: #f2f2f2;
}
/*nav1*/
.nav1 {
	width: 1200px;
	margin: 0 auto;
	line-height: 33px;
	font-size: 12px;
	background-color: #f2f2f2;
}

.nav1 a {
	color: #393939;
	text-decoration: none;
}

.huanying {
	float: left;
}

.huanying a:nth-child(2), .huanying a:nth-child(4) {
	color: #ec3e7d;
}

.huanying a:nth-child(2):hover {
	text-decoration: underline;
}

.huanying a:nth-child(4):hover {
	text-decoration: underline;
}

.guanzhu, .text {
	float: right;
}

.guanzhu a {
	line-height: 33px;
	padding: 0 10px;
	float: left;
	position: relative;
}

.guanzhu a:nth-child(2), .guanzhu a:nth-child(3) {
	width: 18px;
	height: 18px;
	margin: 7px 2px;
	box-sizing: border-box;
}

.text {
	line-height: 33px;
	margin-right: 40px;
}

.zhanghu {
	line-height: 33px;
	text-align: center;
	width: 100px;
	float: left;
}

.zhanghu a {
	text-decoration: none;
	display: block;
}

.zhanghu a:hover {
	background-color: #E7E7E7;
}

.gouwuche {
	line-height: 33px;
	text-align: center;
	width: 100px;
	float: left;
}

.gouwuche a {
	text-decoration: none;
	display: block;
}

.gouwuche a:hover {
	background-color: #E7E7E7;
}

.shoucang {
	line-height: 33px;
	text-align: center;
	width: 100px;
	float: left;
}

.shoucang a {
	text-decoration: none;
	display: block;
}

.shoucang a:hover {
	background-color: #E7E7E7;
}

.zhannei {
	line-height: 33px;
	text-align: center;
	width: 100px;
	float: left;
}

.zhannei a {
	text-decoration: none;
	display: block;
}

.zhannei a:hover {
	background-color: #E7E7E7;
}

.guanzhu .ziji1 {
	width: 100px;
	height: 100px;
	background-image: url(../../images/weibo2.png);
	position: absolute;
	top: 30px;
	left: -10px;
	display: none;
}

.guanzhu a:hover .ziji1 {
	display: block;
}

.guanzhu .ziji2 {
	width: 100px;
	height: 100px;
	background-image: url(../../images/weixin2.png);
	position: absolute;
	top: 30px;
	left: -10px;
	display: none;
}

.guanzhu a:hover .ziji2 {
	display: block;
}

/*页脚*/
.footer {
	width: 1200px;
	margin: 0 auto;
	overflow: hidden;
	font-size: 14px;
}

.footer dl {
	float: left;
	width: 200px;
	padding-top: 50px;
	padding-bottom: 50px;
}

.footer dt {
	font-weight: bold;
	font-size: 20px;
	margin-bottom: 10px;
	color: #333333;
}

.fonter dd {
	line-height: 30px;
	color: #666666;
}

.footer a {
	color: #000000;
	text-decoration: none;
}

.footer a:hover {
	text-decoration: underline;
}

.erweima22 {
	margin: 70px 0;
	position: relative;
}

.erweima22 span:nth-child(1) {
	position: absolute;
	left: 900px;
	font-size: 12px;
}

.erweima22 span:nth-child(2) {
	position: absolute;
	left: 1080px;
	font-size: 12px;
}

/*页脚2*/
.yejiao2 {
	background-color: #000000;
	width: 1920px;
	clear: both;
	height: 100px;
}

.yejiao22 {
	width: 1200px;
	margin: 0 auto;
	position: relative
}

.yejiao22 a:nth-child(1) {
	color: #FFFFFF;
	font-size: 12px;
	position: absolute;
	top: 30px;
	left: -25px;
}

.yejiao22 a:nth-child(2) {
	color: #FFFFFF;
	font-size: 12px;
	position: absolute;
	top: 30px;
	left: 60px;
}

.yejiao22 a:nth-child(3) {
	color: #FFFFFF;
	font-size: 12px;
	position: absolute;
	top: 30px;
	left: 125px;
}

.yejiao22 a:nth-child(4) {
	color: #FFFFFF;
	font-size: 12px;
	position: absolute;
	top: 30px;
	left: 190px;
}

.yejiao22 a:nth-child(5) {
	color: #FFFFFF;
	font-size: 12px;
	position: absolute;
	top: 30px;
	left: 255px;
}

.yejiao22 a:nth-child(6) {
	color: #FFFFFF;
	font-size: 12px;
	position: absolute;
	top: 30px;
	left: 320px;
}

.yejiao22 a:nth-child(7) {
	color: #FFFFFF;
	font-size: 12px;
	position: absolute;
	top: 30px;
	left: 380px;
}

.yejiao22 a:nth-child(8) {
	color: #FFFFFF;
	font-size: 12px;
	position: absolute;
	top: 30px;
	left: 465px;
}

.yejiao22 a:nth-child(9) {
	color: #FFFFFF;
	font-size: 12px;
	position: absolute;
	top: 30px;
	left: 526px;
}

.yejiao22 a:nth-child(10) {
	color: #FFFFFF;
	font-size: 12px;
	position: absolute;
	top: 30px;
	left: 586px;
}

.yejiao22 a:nth-child(11) {
	color: #FFFFFF;
	font-size: 12px;
	position: absolute;
	top: 60px;
	left: -25px;
}

.yejiao22 a:hover {
	text-decoration: underline;
}
</style>

<!-- Link Swiper's CSS -->
<link rel="stylesheet" href="../../css/swiper.min.css">

<!-- Demo styles -->
<style>
html, body {
	position: relative;
	height: 100%;
}

body {
	background: #eee;
	font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
	font-size: 14px;
	color: #000;
	margin: 0;
	padding: 0;
}
</style>
<!-- Swiper JS -->
<script src="../../js/swiper.min.js">
	
</script>

<!-- Initialize Swiper -->
<script>
	var swiper = new Swiper('.swiper-container', {
		pagination : {
			el : '.swiper-pagination',
			type : 'progressbar',
		},
		navigation : {
			nextEl : '.swiper-button-next',
			prevEl : '.swiper-button-prev',
		},
	});
</script>
</head>
<body>
	<form id="orderForm" class="hide">
		<input type="hidden" name="paymentType" value="1" /> 
			<input type="hidden" name="orderItem[0].orderId" value="${item.id}" /> 
			<input type="hidden" name="orderItem[0].mainImage" value="${item.mainImage}" />
			<input type="hidden" name="orderItem[0].commodityName" value="${item.commdityName}" /> 
			<input type="hidden" name="orderItem[0].price" value="${item.price}" /> 
			<input type="hidden" name="orderItem[0].count" value="${item.count}" />
	</form>
	<!--nav1-->
	<div class="nav1">
		<div class="huanying">
			<a> 欢迎光临INBEAUTY官网！ </a> <a href="login.html">登录</a> <span>或</span> <a href="login.html">免费注册</a>
		</div>

		<div class="guanzhu">
			<a href="">关注我们</a> <a href=""><div class="ziji1"></div></a> <a
				href=""><div class="ziji2"></div></a>
		</div>

		<div class="text">
			<div class="zhanghu">
				<a href="">我的账户</a>
			</div>
			<div class="gouwuche">
				<a href="">我的购物车</a>
			</div>
			<div class="shoucang">
				<a href="">我的收藏</a>
			</div>
			<div class="zhannei">
				<a href="">我的站内信</a>
			</div>
			<div class="zhannei">
				<a href="">积分中心</a>
			</div>
			<div class="zhannei">
				<a href="">Global&nbsp;site</a>
			</div>
		</div>
		<br>
	</div>

	<section class="cartMain">
		<c:forEach items="${orderList}" var="order">
			<div class="cartMain_hd">
				<ul class="order_lists cartTop">
					<li class="list_chk">
						<!--所有商品全选--> <input type="checkbox" id="all" class="whole_check">
						<label for="all"></label> 全选
					</li>
					<li>订单编号: <span class="orderId">${order.orderId}</span>
					</li>
					<li class="commodityName">商品信息</li>
					<li class="price">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;单价</li>
					<li class="count">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;数量</li>
				</ul>
				<div class="cartBox">
					<c:forEach items="${order.orderDetails}" var="orderDetail">
						<div class="order_content">
							<ul class="order_lists">
								<li class="list_con">
									<div class="list_img">
										<a href="javascript:;"><img src="${orderDetail.mainImage}" alt=""></a>
									</div>
									<div class="list_text">
										<a href="javascript:;">${orderDetail.commodityName}</a>
									</div>
								</li>
								<li class="price">
									<p class="price">${orderDetail.price}</p>
								</li>
								<li class="count">
								<span>${orderDetail.count}</span>
								</li>
							</ul>
						</div>
					</c:forEach>
				</div>

				<!--底部-->
				<div class="bar-wrapper">
					<div class="bar-right">
						<div class="totalMoney">
					共计: <strong class="total_text">0.00</strong>
				</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</section>

	<section class="model_bg"></section>
	<section class="my_model">
		<p class="title">
			删除订单<span class="closeModel">X</span>
		</p>
		<p>您确认要删除该订单吗？</p>
		<div class="opBtn">
			<a href="javascript:;" class="dialog-sure">确定</a><a
				href="javascript:;" class="dialog-close">关闭</a>
		</div>
	</section>
	<!-- Swiper JS -->
	<script src="../../js/swiper.min.js">
		
	</script>

	<!-- Initialize Swiper -->
	<script>
		var swiper = new Swiper('.swiper-container', {
			pagination : {
				el : '.swiper-pagination',
				type : 'progressbar',
			},
			navigation : {
				nextEl : '.swiper-button-next',
				prevEl : '.swiper-button-prev',
			},
		});
	</script>



	<!--页脚部分-->
	<div class="footer_box">
		<div class="footer">
			<dl>
				<dt>新手上路</dt>
				<dd>
					<a href="">常见问题</a>
				</dd>
				<dd>
					<a href="">购物流程</a>
				</dd>
				<dd>
					<a href="">优惠券说明</a>
				</dd>
				<dd>
					<a href="">联络我们</a>
				</dd>
				<dd>
					<a href="">常见问题</a>
				</dd>

			</dl>
			<dl>
				<dt>配送方式</dt>
				<dd>
					<a href="">配送说明</a>
				</dd>
				<dd>
					<a href="">追踪订单</a>
				</dd>


			</dl>
			<dl>
				<dt>售后服务</dt>
				<dd>
					<a href="">正品保证</a>
				</dd>
				<dd>
					<a href="">价格承诺</a>
				</dd>
				<dd>
					<a href="">30日退换保证</a>
				</dd>
				<dd>
					<a href="">退款程序</a>
				</dd>
				<dd>
					<a href="">更改订单</a>
				</dd>

			</dl>
			<dl>
				<dt>INBEAUTY会员</dt>
				<dd>
					<a href="">积分奖赏</a>
				</dd>
				<dd>
					<a href="">VIP会员计划</a>
				</dd>
			</dl>
			<div class="erweima22">
				<span><img src="../../images/weibo.png" alt="">INBEAUTY官方微博<br>
					@INBEAUTY</span> <span><img src="../../images/wiexin.png" alt="">INBEAUTY官方微信<br>
					ID:TNBEAUTYCOM</span>

			</div>
		</div>
	</div>

	<!--页脚2-->
	<div class="yejiao2">

		<div class="yejiao22">
			<a href="">关于INBEAUTY</a> <a href="">使用条款</a> <a href="">隐私策略</a> <a
				href="">批发服务</a> <a href="">招商合作</a> <a href="">帮助中心</a> <a href="">港澳店铺推广</a>
			<a href="">人才招聘</a> <a href="">联络我们</a> <a href="">其他送货地区</a> <a
				href="">Copyright 2000-2022 INBEAUTY 版权所有INBEAUTY国际控股有限公司</a>
		</div>
	</div>
	<script src="../../js/jquery.min.js"></script>
	<script src="../../js/orders.js"></script>
</body>
</html>
