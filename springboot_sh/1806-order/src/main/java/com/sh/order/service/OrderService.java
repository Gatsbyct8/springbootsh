package com.sh.order.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sh.order.mapper.OrderMapper;
import com.sh.order.pojo.Order;

import javax.annotation.Resource;

@Service
public class OrderService {
	@Resource
	private OrderMapper orderMapper;
	public Long saveOrder(Order order) {
		//传递的order对象缺少orderId
//		String orderId= System.currentTimeMillis()+""+order.getUserId();
		//持久层存入order对象
//		order.setOrderId(orderId);
		order.setCreateTime(new Date());
		order.setUpdateTime(order.getCreateTime());
		order.setStatus(1);//默认的订单状态都是未付款
		orderMapper.saveOrder(order);
		return orderMapper.getOrder().getOrderId();
	}
	public Order queryOrder(Long orderId) {
		
		return orderMapper.queryOrder(orderId);
	}
	public List<Order> findOrderListByUserId(Long userId) {
		
		return orderMapper.findOrderList(userId);
	}

}
