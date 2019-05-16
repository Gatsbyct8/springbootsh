<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Document</title>
<link rel="stylesheet" href="../../css1/header.css">
<link rel="stylesheet" href="../../css/bootstrap.css">
<link rel="stylesheet" href="../../css/base.css">
<link rel="stylesheet" href="../../css/product_details.css">
<link rel="stylesheet" href="../../css1/public.css">
<link rel="stylesheet" href="../../css1/footer.css">
<script src="../../js1/jquery-3.2.1.js"></script>
<script src="../../js1/header.js"></script>
<script src="../../js/vue.js"></script>
<style>
</style>

</head>
<body>

	<nav>
		<!-- 导航 -->
		<div class="container">
			<ul>
				<li><a href="/index.html" title="在线商城" style="color: #e5e5e5;font-weight: 800;">首页</a></li>
                <li><a href="/cart/show" title="坚果Pro 2S">我的购物车</a></li>
                <li><a href="/myuser/center" title="坚果 R1">个人中心</a></li>
                <li><a href="/order/list" title="坚果 TNT 工作站">历史订单</a></li>
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
                    <!- 虚的 -->
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

	<main id="main" class="container">

	<div class="container mb-5">
		<div class="row pr-3">
			<div id="preview" class="col pr-0">
				<div class="card bg-transparent mr-5 position-absolute">
					<img class="card-img-top"
						src="http:${commodity.commodityBigImage }" alt="Card image cap">
					<div id="mask" class="position-absolute d-none"></div>
					<div id="super-mask" class="position-absolute"></div>
					<div id="div-lg" class="position-absolute d-none"></div>
					<div class="card-body p-0 text-center">
						<img src="../../img/product_detail/hover-prev.png"
							class="btn float-left btn-light border-0 p-1 pt-4 pb-4 disabled">
						<div class="d-inline-block pt-2 mx-0 m-auto">
							<!--<ul class="list-unstyled mb-0">-->
							<ul class="list-unstyled mb-0">
								<li v-for="p in pics" class="float-left p-1"><img
									:src="http:${commodity.commoditySmallImage }"
									:data-md="img/product/md/57e3b072N661cd00d.jpg" :data-lg="p.lg">
								</li>
							</ul>
						</div>
						<img src="../../img/product_detail/hover-next.png"
							class="btn float-right btn-light border-0 p-1 pt-4 pb-4">
					</div>
				</div>
			</div>
			<div id="details" class="col pl-0">
				<!-- <h6 class="font-weight-bold">{{product.title}}</h6> -->
				<h6>
					<a class="small text-dark font-weight-bold" href="javascript:;"><span
						value="${commodity.name }" style="font-size: 25px;">${commodity.name }</span></a>
				</h6>
				<div class="alert alert-secondary small" role="alert"
					style="margin-top: 10px">
					<div>
						<span style="font-size: 20px;">学员售价：</span>
						<h2 class="d-inline text-primary font-weight-bold">
							<span value="${commodity.price }" style="font-size: 25px;">¥${commodity.price }</span>
						</h2>
					</div>
					<div>
						<span style="font-size: 15px; margin-top: 10px">服务承诺：最快，最好，只为你而生</span>
					</div>
				</div>
				<!-- 客服 -->
				<p class="mb-1 mb-11" style="height: 32px;"></p>
				<!-- 规格 -->
				<div class="guige" style="height: 14px;"></div>
				<!-- 数量 -->
				<div id="count" class="mt-2">
					<div class="float-left small">数量：</div>
					<div class="input-group mb-3 w-25">
						<div class="input-group-prepend">
							<button class="btn btn-outline-secondary p-1" type="button">-</button>
						</div>
						<input type="text" value="1" id="change123" class="form-control "
							placeholder="" aria-label="" aria-describedby="basic-addon1">
						<div class="input-group-append">
							<button class="btn btn-outline-secondary p-1" type="button">+</button>
						</div>
					</div>
					<%-- <form id="cartForm" method="post">
						<input type="hidden" name="commodityName" value="${commodity.title }" /> <input
							type="hidden" name="commodityBigImage" value="${item.image }" /> <input
							type="hidden" name="commodityPrice" value="${item.price }" /> <input
							 type="hidden" name="num" value=$(" input[ id='change123' ] ").val()
							 />
					</form> --%>
					<div class="clearfix"></div>
				</div>
				<!-- 购买部分 -->
				<div>
					<a class="btn pt-3 pb-2 pl-5 pr-5 btn-primary" href="javascript:;"><h5>立即购买</h5></a>
					<a class="btn btn-primary pt-3" id="Tocart123" href="/cart/add/${commodityId}?num=1" >
						<h5 >
							<img src="../../img/product_detail/product_detail_img7.png"
								alt=""> 加入购物车
						</h5>
					</a> 
					
					
					<a class="btn btn-primary pt-1 pb-1" href="javascript:;"
						class="collection"> <img
						src="../../img/product_detail/product_detail_img6.png"> <br>
						收藏
					</a>
				</div>
			</div>
		</div>
	</div>
	<div class="container mb-5" style="margin-top: 20px;">
		<h4 class="d-inline-block ml-3">为你推荐</h4>
		<h6 class="d-inline-block bg-dark text-white ml-2">大家都在看</h6>
		<div id="recommend" class="border pl-3">
			<ul class="list-unstyled" style="width: 1100px; margin-left: -220px;">
				<li class="float-left">
					<div class="card mb-1 p-4 border-0 bg-transparent box-shadow">
						<img class="card-img-top"
							data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
							alt="Thumbnail [100%x225]"
							src="../../img/product_detail/product_detail_1.png"
							data-holder-rendered="true">
						<div class="card-body p-0">
							<p class="card-text text-center small">ThinkPad New S2
								(20GUA00QCD)13.3英寸超霸</p>
						</div>
					</div>
				</li>
				<li class="float-left">
					<div class="card mb-1 p-4 border-0 bg-transparent box-shadow">
						<img class="card-img-top"
							data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
							alt="Thumbnail [100%x225]"
							src="../../img/product_detail/product_detail_2.png"
							data-holder-rendered="true">
						<div class="card-body p-0">
							<p class="card-text text-center small">戴尔 DELL燃7000 R1605S 超霸</p>
						</div>
					</div>
				</li>
				<li class="float-left">
					<div class="card mb-1 p-4 border-0 bg-transparent box-shadow">
						<img class="card-img-top"
							data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
							alt="Thumbnail [100%x225]"
							src="../../img/product_detail/product_detail_3.png"
							data-holder-rendered="true">
						<div class="card-body p-0">
							<p class="card-text text-center small">戴尔(DELL)魔方15MF
								Pro-R2505TSS灵</p>
						</div>
					</div>
				</li>
				<li class="float-left">
					<div class="card mb-1 p-4 border-0 bg-transparent box-shadow">
						<img class="card-img-top"
							data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
							alt="Thumbnail [100%x225]"
							src="../../img/product_detail/product_detail_4.png"
							data-holder-rendered="true">
						<div class="card-body p-0">
							<p class="card-text text-center small">联想(Lenovo) YOGA900
								(YOGA4 PRO)多彩版</p>
						</div>
					</div>
				</li>
				<li class="float-left">
					<div class="card mb-1 p-4 border-0 bg-transparent box-shadow">
						<img class="card-img-top"
							data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
							alt="Thumbnail [100%x225]"
							src="../../img/product_detail/product_detail_1.png"
							data-holder-rendered="true">
						<div class="card-body p-0">
							<p class="card-text text-center small">ThinkPad New S2
								(20GUA00QCD)13.3英寸超霸</p>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
	<nav class="navbar flex-md-nowrap p-0 ml-3">
		<form class="form-inline pl-2">
			<button class="btn bg-transparent rounded-0 pt-3 pb-2 active"
				type="button">
				<h5>商品详情</h5>
			</button>
			<button class="btn bg-transparent rounded-0 pt-3 pb-2" type="button">
				<h5>商品评价</h5>
			</button>
		</form>
		<!-- <ul class="navbar-nav">
          <li class="nav-item text-nowrap">
            <a class="btn btn-primary p-3 border-bottom" href="javascript:;">
              <h5><img src="img/product_detail/product_detail_img7.png" alt=""> 加入购物车</h5>
            </a>
          </li>
        </ul> -->
	</nav>
	<div id="params" class="container">
		<div class="row mr-1">
			<div class="col-md-10 pt-5">
				<a name="规格参数"></a>
				<h6 class="d-inline-block ml-3">
					规格参数 <img src="../../img/product_detail/product_detail_icon_1.png" alt="">
				</h6>
				<div class="pl-3">
					<ul class="list-unstyled">
						<li class="float-left mb-2"><a class="text-muted small"
							href="#">商品名称：AppleMacBook Air</a></li>
						<li class="float-left mb-2"><a class="text-muted small"
							href="#">系统：MacOS</a></li>
						<li class="float-left mb-2"><a class="text-muted small"
							href="#">内存容量：8G</a></li>
						<li class="float-left mb-2"><a class="text-muted small"
							href="#">分辨率：1920*1080</a></li>
						<li class="float-left mb-2"><a class="text-muted small"
							href="#">显卡型号：集成显卡</a></li>
						<li class="float-left mb-2"><a class="text-muted small"
							href="#">处理器：Intel i5低功耗版</a></li>
						<li class="float-left mb-2"><a class="text-muted small"
							href="#">显存容量：其它</a></li>
						<li class="float-left mb-2"><a class="text-muted small"
							href="#">分类：轻薄本</a></li>
						<li class="float-left mb-2"><a class="text-muted small"
							href="#">硬盘容量:128G固态</a></li>
					</ul>
				</div>
			</div>

		</div>
	</div>
	</main>
	<footer class="container">
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
	<script src="../../js/jquery-3.2.1.js"></script>
	<script src="../../js/bootstrap.js"></script>
	<script src="../../js/ajax.js"></script>
	<script src="../../js/details.js"></script>
</body>
</html>