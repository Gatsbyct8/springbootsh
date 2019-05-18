package com.sh.service;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.sh.common.service.HttpClientService;
import com.sh.common.util.ObjectUtil;
import com.sh.common.vo.SysResult;
import com.sh.pojo.Cart;
import com.sh.pojo.Order;

@Service
public class OrderService {
	@Autowired
	private HttpClientService client;
	public Long submit(Order order) throws Exception {
		//String url="http://order.sh.com/order/submit";
		String url="http://localhost:8093/order/submit";
		//转化json
		String orderJson=ObjectUtil.mapper.writeValueAsString(order);
		String orderId=client.doPostJson(url, orderJson);
		for(int i=0;i<order.getOrderDetails().size();i++) {
			Long commodityId=order.getOrderDetails().get(i).getCommodityId();
			String url1 = "http://localhost:8092/cart/delete/" + order.getUserId() + "/" + commodityId;
			client.doGet(url1);
		}
		return Long.parseLong(orderId);
	}
	public Order success(Long id) throws Exception {
		//String url="http://order.sh.com/order/query/"+id;
		String url="http://localhost:8093/order/query/"+id;

		String orderJson=client.doGet(url);
		//转化成对象
		Order order=ObjectUtil.mapper.readValue(orderJson, Order.class);
		return order;
	}

	public List<Cart> queryCartCommodity(Long userId) throws Exception {

		//String url = "http://cart.sh.com/cart/query/" + userId;
		String url = "http://localhost:8092/cart/query/" + userId;
		String jsonData = client.doGet(url);
		// 从result中获取data属性list<cart>
		SysResult result = ObjectUtil.mapper.readValue(jsonData, SysResult.class);
		List<Cart> cartList = (List<Cart>) result.getData();
		return cartList;

	}
	public List<Order> orderList(long userId) throws Exception {
		//String url="http://order.sh.com/order/orderList/"+userId;
		String url="http://localhost:8093/order/orderList/"+userId;
		String orderJson=client.doGet(url);
		if(orderJson.equals("[]")){
			Order order=new Order();
			List<Order> orderList=new ArrayList<>();
			orderList.add(order);
			return orderList;
		}else{
		//System.out.println(orderJson);
		SysResult result = ObjectUtil.mapper.readValue(orderJson, SysResult.class);
		List<Order> orderList = (List<Order>) (result.getData());
		return orderList;
		}
	}

}






