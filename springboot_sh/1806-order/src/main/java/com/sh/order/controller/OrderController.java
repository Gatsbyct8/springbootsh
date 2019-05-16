package com.sh.order.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.sh.common.util.ObjectUtil;
import com.sh.common.vo.SysResult;
import com.sh.order.pojo.Order;
import com.sh.order.service.OrderService;

@RestController
public class OrderController {
	@Autowired
	private OrderService orderService;
	//新增订单数据 Order
	@RequestMapping("order/submit")
	public Long saveOrder(@RequestBody String orderJson) throws Exception{
		//将json转化成order对象
		Order order=ObjectUtil.mapper.readValue(orderJson, Order.class);
		//业务层生成orderId,返回
		Long orderId=orderService.saveOrder(order);
		return orderId;
	}
	//查询订单,根据订单id
	@RequestMapping("order/query/{orderId}")
	public Order queryOrderById(@PathVariable Long orderId){
		Order order=orderService.queryOrder(orderId);
		return order;
	}
	
	@RequestMapping("order/orderList/{userId}")
	public SysResult findOrderListById(@PathVariable Long userId){
		
		List<Order> orderList=orderService.findOrderListByUserId(userId);
		SysResult s=new SysResult();
		s.setData(orderList);
		s.setMsg("0");
		s.setStatus(200);
		return s;
	}
}
