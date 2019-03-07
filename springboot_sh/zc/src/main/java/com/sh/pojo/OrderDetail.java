package com.sh.pojo;

import java.util.Date;

import com.sh.common.po.BasePojo;

public class OrderDetail extends BasePojo{
	private Long orderDetailId;
	private String orderId;
	private Long commodityId;
	private Integer count;
	
	private String mainImage;
	private Integer price;
	private String commodityName;
	public Long getOrderDetailId() {
		return orderDetailId;
	}
	public void setOrderDetailId(Long orderDetailId) {
		this.orderDetailId = orderDetailId;
	}
	
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public Long getCommodityId() {
		return commodityId;
	}
	public void setCommodityId(Long commodityId) {
		this.commodityId = commodityId;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	
	public String getMainImage() {
		return mainImage;
	}
	public void setMainImage(String mainImage) {
		this.mainImage = mainImage;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public String getCommodityName() {
		return commodityName;
	}
	public void setCommodityName(String commodityName) {
		this.commodityName = commodityName;
	}
	@Override
	public String toString() {
		return "OrderDetail [orderDetailId=" + orderDetailId + ", orderId=" + orderId + ", commodityId=" + commodityId
				+ ", count=" + count + ", mainImage=" + mainImage + ", price=" + price + ", commodityName="
				+ commodityName + "]";
	}
	
}
