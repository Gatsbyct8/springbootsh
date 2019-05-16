<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
  <link rel="stylesheet" href="../../css/bootstrap.css">
  <link rel="stylesheet" href="../../css/base.css">
  <link rel="stylesheet" href="../../css/products.css">
  <link rel="stylesheet" href="../../css1/public.css">
    <link rel="stylesheet" href="../../css1/footer.css">
    <link rel="stylesheet" href="../../css1/header.css">
  <script src="../../js/vue.js"></script>
  <script src="../../js1/header.js"></script>
</head>
<body>
  <header>
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
    <div class="nav-sub">
        <div class="contain">
            <ul>
                <li><a href="index.html" class="active">首页</a></li>
            </ul>
            <div class="nav-search">
                <div class="search">
                    <form action="#" class="search-form">
                        <button type="submit">搜</button>
                        <input type="text" maxlength="10" name="" id="">
                        <div>
                            <a href="product_details.jsp" class="commend">小米6摄像头 2899起</a>
                        </div>
                    </form>
                    <!-- 点击显示推荐列表 -->
                    <div class="commend-list" style="display:none;">
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
  <main id="main" class="container">
    <div class="pb-2 text-center">
      <img class="d-block mx-auto mb-4 w-100" src="img/index/index_guild.png">
    </div>
    <div class="row">
      <div class="col-md-9">
        <h5 class="mb-3 p-2 text-muted">笔记本电脑</h5>
        <div id="plist" class="row bg-white ml-1 mr-1 pt-2 pl-2">
        <c:forEach items="${commodityList}" var="commodity">
          <div class="col-md-4 p-1">
            <div class="card mb-4 box-shadow pr-2 pl-2">
              <a href="product_details.html?lid=1">
                <img class="card-img-top" src="${commodity.commodityBigImage}">
              </a>
              <div class="card-body p-0">
                <h5 class="text-primary">￥${commodity.price}</h5>
                <p class="card-text">
                  <a href="/product_details/${commodity.commodityId}" class="text-muted small" title="Apple MacBook Air 13.3英寸笔记本 银色(Core i5 处理器/8GB内存/128GB SSD闪存 MMGF2CH/A)">${commodity.name}</a>
                </p>
                <div class="d-flex justify-content-between align-items-center p-2 pt-0">
                  <a class="btn btn-primary float-right ml-1 pl-1 pr-1" href="/product_details/${commodity.commodityId}">点击查看</a>
                </div>
              </div>
            </div>
          </div>
          </c:forEach>
        </div>
        <h6 class="mb-3 p-2 text-muted small">
          
            <ul class="pagination mb-0 justify-content-end">
              <li class="page-item"><a class="page-link bg-transparent" href="/searchLast/${q }/${page}">上一页</a></li>
              <li class="page-item"><a class="page-link bg-transparent" href="/searchNext/${q }/${page}">下一页</a></li>
            </ul>
          
        </h6>
      </div>
     
  </main>
  <footer >
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
  <script src="../../js/jquery-3.2.1.js"></script>
  <script src="../../js/bootstrap.js"></script>
  <script src="../../js/header.js"></script>
  <script src="../../js/products.js"></script>
  <script src="../../js/footer.js"></script>
</body>
</html>