package com.sh.controller;

import java.util.Date;
import java.util.List;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sh.common.vo.SysResult;
import com.sh.pojo.Cart;
import com.sh.pojo.Order;
import com.sh.pojo.OrderDetail;
import com.sh.service.OrderService;

@Controller
public class OrderController {
	@Autowired
	private OrderService orderService;
	//购物车跳转到订单
		@RequestMapping("order/create")
		public String goOrderCart(Model model,
				HttpServletRequest request) throws Exception{
			Long userId=(long)request.getAttribute("userId");
			System.out.println(userId);
			
			//从购物车中获取当前用户的商品，传给订单信息收集页面
			List<Cart> cartList=orderService.queryCartCommodity(userId);
			System.out.println("1"+cartList);
			model.addAttribute("carts", cartList);
			model.addAttribute("totalPrice",0);
			return "order-cart";
		}
     //保存订单
	@RequestMapping("order/submit")
	@ResponseBody
	public SysResult submitOrder(Order order,
			HttpServletRequest request) throws Exception{
		System.out.println(order);
		Long userId=1L;
		//(long)request.getAttribute("userId");
		order.setUserId(userId);
		Long orderId=orderService.submit(order);
		return SysResult.oK(orderId);
	}
	
	//转向成功页面
	@RequestMapping("order/success")
	public String goSuccess(Long id,Model model) throws Exception{
		Order order=orderService.success(id);
		model.addAttribute("order", order);
		Date created = order.getCreateTime();
		Date arrive=new Date(created.getTime()+1000*60*60*24*3);
		List<OrderDetail> orderDetails=order.getOrderDetails();
		int price=0;
		for (OrderDetail orderDetail : orderDetails) {
			price+=orderDetail.getPrice();
		}
		model.addAttribute("date", arrive);
		model.addAttribute("price", price);
		return "success";
	}
	
	@RequestMapping("order/list")
	public String orderList(HttpServletRequest request,Model model) throws Exception{
		long UserId=(long) request.getAttribute("userId");
		List<Order> orderList=orderService.orderList(UserId);
		model.addAttribute("orderList",orderList);
		return "order";
	}
	
}









