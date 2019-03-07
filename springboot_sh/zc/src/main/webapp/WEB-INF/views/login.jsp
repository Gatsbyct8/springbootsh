<%@page import="java.net.URLDecoder"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="Content-type" content="text/html; charset=UTF-8" />
		<link rel="stylesheet" href="../../css1/public.css">
    <link rel="stylesheet" href="../../css1/header.css">
    <link rel="stylesheet" href="../../css/login.css"/>
    <script src="../../js1/jquery-3.2.1.js"></script>
    <script src="../../js1/header.js"></script>
		
		<title>SecurityHome欢迎您登录</title>
	</head>
	<body>
		<%
			// 获取用户携带的所有Cookie
			Cookie[] cs=request.getCookies();
			// 找到remname的Cookie
			Cookie findC=null;
			if(cs!=null){
				for(Cookie c:cs){
					if("remname".equals(c.getName())){
						findC=c;
					}
				}
			}
			// 将remname的Cookie的值添加到username的input中
			String phone="";//用来保存用户名的变量
			if(findC!=null){
				// 使用remname的Cookie的值给username赋值				
				phone=findC.getValue();
				// 利用URLDecorder将%E5%BC%A0%E9%A3%9E变成张飞
				phone=URLDecoder.decode(phone,"utf-8");
			}
		%>
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
    <!-- <div class="nav-sub">
        <div class="contain">
            <ul>
                <li><a href="index.jsp" class="active">首页</a></li>
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
                    点击显示推荐列表
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
    </div> -->
		<h1>欢迎登录SecurityHome</h1>
		<form action="service/user/doLogin" method="POST">
			<table>
				<tr>
					<td colspan="2" style='text-align:center;color:red'>
						<%=request.getAttribute("msg")==null?"":request.getAttribute("msg") %>
					</td>
				</tr>
				<tr>
					<td class="tdx">手机号：</td>
					<td><input type="text" name="phone" value="<%=phone %>"/></td>
				</tr>
				<tr>
					<td class="tdx">密&nbsp;&nbsp; 码：</td>
					<td><input type="password" name="password"/></td>
				</tr>
				
				<tr>
					<td colspan="2" style="text-align:center">
						<input type="submit" value="登录"/>
					</td>
				</tr>
			</table>
		</form>
				
	</body>
</html>

