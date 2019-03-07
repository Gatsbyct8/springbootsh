package com.sh.manage.pojo;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.sh.common.po.BasePojo;

@Table(name="commodity")
public class Commodity extends BasePojo{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long commodityId;
	private String name;
	private double price;
	private int count;
	private String detailSpecification;
	
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
	
}
