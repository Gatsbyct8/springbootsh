package com.sh.pojo;

import com.sh.common.po.BasePojo;

public class Commodity extends BasePojo{
	private Long commodityId;
	private String name;
	private double price;
	private int count;
	private String detailSpecification;
	
	private String commoditySmallImage;
	private String commodityBigImage;
	public Long getCommodityId() {
		return commodityId;
	}
	public void setCommodityId(Long commodityId) {
		this.commodityId = commodityId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getDetailSpecification() {
		return detailSpecification;
	}
	public void setDetailSpecification(String detailSpecification) {
		this.detailSpecification = detailSpecification;
	}
	
	public String getCommoditySmallImage() {
		return commoditySmallImage;
	}
	public void setCommoditySmallImage(String commoditySmallImage) {
		this.commoditySmallImage = commoditySmallImage;
	}
	public String getCommodityBigImage() {
		return commodityBigImage;
	}
	public void setCommodityBigImage(String commodityBigImage) {
		this.commodityBigImage = commodityBigImage;
	}
	@Override
	public String toString() {
		return "Commodity [commodityId=" + commodityId + ", name=" + name + ", price=" + price + ", count=" + count
				+ ", detailSpecification=" + detailSpecification 
				+ ", commoditySmallImage=" + commoditySmallImage + ", commodityBigImage=" + commodityBigImage + "]";
	}
	
	
}
