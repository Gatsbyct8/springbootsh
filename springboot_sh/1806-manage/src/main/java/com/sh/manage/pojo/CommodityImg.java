package com.sh.manage.pojo;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.sh.common.po.BasePojo;

@Table(name="commodity_image")
public class CommodityImg {
	
	private Long commodityId;
	private String commoditySmallImage;
	private String commodityBigImage;
	
	public Long getCommodityId() {
		return commodityId;
	}
	public void setCommodityId(Long commodityId) {
		this.commodityId = commodityId;
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
		return "CommodityImg [commodityId=" + commodityId + ", commoditySmallImage=" + commoditySmallImage
				+ ", commodityBigImage=" + commodityBigImage + "]";
	}
	
	

}
