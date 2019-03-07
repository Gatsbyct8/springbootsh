package com.sh.service;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.sh.common.service.HttpClientService;
import com.sh.common.util.JSONToListUtil;
import com.sh.common.util.ObjectUtil;
import com.sh.common.vo.SysResult;
import com.sh.pojo.Cart;
import com.sh.pojo.Commodity;

@Service
public class CartService {
	@Autowired
	private HttpClientService client;
	
	public List<Cart> queryCart(Long userId) throws Exception {
		String url="http://cart.sh.com/cart/query/"+userId;
		String jsonData = client.doGet(url);//sysResult的json，获取data
		System.out.println("33333333333333"+jsonData);
		List<Cart> cartList=
	    (List<Cart>)ObjectUtil.mapper.readValue(jsonData, SysResult.class).
	    getData();
		return cartList;
	}
	//保存购物车
	public void addCart(Long userId, Long commodityId, Integer num) throws Exception {
		//利用itemId获取price，image，title
		String url="http://manage.sh.com/getCommodity/"+commodityId;
		String url2="http://manage.sh.com/getCommodityImg/"+commodityId;
		String commodityJson = client.doGet(url);
		//itemTitle=title,itemPrice=price,itemImage=?image
		Commodity commodity = ObjectUtil.mapper.
				readValue(commodityJson, Commodity.class);
		System.out.println("................."+commodity);
		String itemJson2=client.doGet(url2);
		JSONObject jsonObject=new JSONObject(itemJson2);
		List<String> commodityImg=JSONToListUtil.jsonToList(jsonObject.get("data").toString(), String.class);
		System.out.println(commodityImg);
		//使用client,doPost 将参数封装在map对象中
		url="http://cart.sh.com/cart/save";
		Cart cart=new Cart();
		cart.setCommodityId(commodityId);
		cart.setUserId(userId);
		cart.setName(commodity.getName());
		cart.setPrice((long)commodity.getPrice());
		cart.setMianImage(commodityImg.get(1));
		cart.setCount(num);
		String params=ObjectUtil.mapper.writeValueAsString(cart);
		System.out.println(params);
//		Map<String,Object> params=new HashMap<String,Object>();
//		params.put("userId", userId);
//		params.put("commodityId", commodityId);
//		params.put("count", num);
//		params.put("name", commodity.getName());
//		params.put("price", commodity.getPrice());
//		params.put("mianImage", commodityImg.get(1));
		client.doPostJson(url,params);

		
	}
	public String updatedNum(Long userId, 
			Long itemId, Integer num) throws Exception {
		String url="http://cart.sh.com/cart/update/num/"+
				userId+"/"+itemId+"/"+num;
		return client.doGet(url);
	}
	public String deleteCart(Long userId, Long itemId) throws Exception {
		String url="http://cart.sh.com/cart/delete/"
				+userId+"/"+itemId;
		
		return client.doGet(url);
	}
	
}






















