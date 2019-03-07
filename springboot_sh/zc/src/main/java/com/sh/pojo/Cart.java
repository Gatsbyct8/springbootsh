package com.sh.pojo;

public class Cart {
	private Long cartId;
	private Long userId;
	private Long commodityId;
	private String name;
	private Long price;
	private Integer count;
	private String mianImage;
	public Long getCartId() {
		return cartId;
	}
	public void setCartId(Long cartId) {
		this.cartId = cartId;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
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
	public Long getPrice() {
		return price;
	}
	public void setPrice(Long price) {
		this.price = price;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public String getMianImage() {
		return mianImage;
	}
	public void setMianImage(String mianImage) {
		this.mianImage = mianImage;
	}
	@Override
	public String toString() {
		return "Cart [cartId=" + cartId + ", userId=" + userId + ", commodityId=" + commodityId + ", name=" + name
				+ ", price=" + price + ", count=" + count + ", mianImage=" + mianImage + "]";
	}
	
}
