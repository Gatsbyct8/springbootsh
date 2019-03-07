package com.sh.order.mapper;

import java.util.List;

import com.sh.common.mapper.MyMapper;
import com.sh.order.pojo.Order;

public interface OrderMapper {

	void saveOrder(Order order);

	Order queryOrder(Long orderId);
	List<Order> findOrderList(Long userId);
	Order getOrder();

}
