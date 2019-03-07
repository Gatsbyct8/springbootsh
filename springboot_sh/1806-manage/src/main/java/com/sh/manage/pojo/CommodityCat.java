package com.sh.manage.pojo;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.sh.common.po.BasePojo;

@Table(name="commodity_catgory")
public class CommodityCat extends BasePojo{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long commodityCatgoryId;
	private String name;
	private int status;
	private Long parentId;
	private Boolean isParent;
	public Long getCommodityCatgoryId() {
		return commodityCatgoryId;
	}
	public void setCommodityCatgoryId(Long commodityCatgoryId) {
		this.commodityCatgoryId = commodityCatgoryId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getStatus() {
		return isParent? 1:0;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Long getParentId() {
		return parentId;
	}
	public void setParentId(Long parentId) {
		this.parentId = parentId;
	}
	public Boolean getIsParent() {
		return isParent;
	}
	public void setIsParent(Boolean isParent) {
		this.isParent = isParent;
	}
	

}
