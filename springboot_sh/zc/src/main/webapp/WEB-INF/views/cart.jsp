<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>购物车结算</title>

<link rel="stylesheet" href="../../css/reset.css">
<link rel="stylesheet" href="../../css/carts.css">

</head>
<body>
<section class="cartMain">
	<div class="cartMain_hd">
		<ul class="order_lists cartTop">
			<li class="list_chk">
				<!--所有商品全选-->
				<input type="checkbox" id="all" class="whole_check">
				<label for="all"></label>
				全选
			</li>
			<li class="list_con">商品信息</li>
			
			<li class="list_price">单价</li>
			<li class="list_amount">数量</li>
			<li class="list_sum">金额</li>
			<li class="list_op">操作</li>
		</ul>
	</div>

	<div class="cartBox">
		<!-- <div class="shop_info">
			<div class="all_check">
				店铺全选
				<input type="checkbox" id="shop_a" class="shopChoice">
				<label for="shop_a" class="shop"></label>
			</div>
			<div class="shop_name">
				店铺：<a href="javascript:;">搜猎人艺术生活</a>
			</div>
		</div> -->
		<div class="order_content">
		<c:forEach items="${cartList}" var="cart" varStatus="status" >
		<ul class="order_lists">
				<li class="list_chk">
				    
					<input type="checkbox" id="checkbox_${status.index+2 }" class="son_check">
					<label for="checkbox_${status.index+2 }"></label>
				</li>
				<li class="list_con">
					<div class="list_img"><a href="javascript:;"><img src="images/1.png" alt=""></a></div>
					<div class="list_text"><a href="javascript:;">${cart.name}</a></div>
				</li>
				
				<li class="list_price">
					<p class="price">￥${cart.price}</p>
				</li>
				<li class="list_amount">
					<div class="amount_box">
						<a href="javascript:;" class="reduce reSty">-</a>
						<input type="text" value="${cart.commodityId }" class="commodityId1233">
						<input type="text" value="${cart.count }" class="sum" >
						<a href="javascript:;" class="plus">+</a>
					</div>
				</li>
				<li class="list_sum">
					<p class="sum_price">￥${cart.price*cart.count}</p>
				</li>
				<li class="list_op">
					<p class="del"><a href="http://www.sh.com/cart/delete/${commodityId}" class="delBtn">移除商品</a></p>
				</li>
			</ul>
		</c:forEach>
			
			
		</div>
	</div>

	
	
	<!--底部-->
	<div class="bar-wrapper">
		<div class="bar-right">
			<div class="piece">已选商品<strong class="piece_num">0</strong>件</div>
			<div class="totalMoney">共计: <strong class="total_text">${ status}</strong></div>
			<div class="calBtn"><a href="/order/create">结算</a></div>
		</div>
	</div>
</section>
<section class="model_bg"></section>


<script src="../../js/jquery.min.js"></script>
<script src="../../js/carts.js"></script>
</body>
</html>
