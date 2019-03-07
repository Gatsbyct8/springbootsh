package com.sh.pojo;

import java.util.Date;
import java.util.List;

import com.sh.common.po.BasePojo;

public class Order extends BasePojo{
	private Long orderId;
	private Long userId;
	private Integer status;
	
	private List<OrderDetail> orderDetails;
	
	
	public Long getOrderId() {
		return orderId;
	}
	public void setOrderId(Long orderId) {
		this.orderId = orderId;
	}
	public Long getUserId() {
		return userId;
	}
	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", userId=" + userId + ", status=" + status + ", orderDetails="
				+ orderDetails + "]";
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	
	public List<OrderDetail> getOrderDetails() {
		return orderDetails;
	}
	public void setOrderDetails(List<OrderDetail> orderDetails) {
		this.orderDetails = orderDetails;
	}
	


	
}
