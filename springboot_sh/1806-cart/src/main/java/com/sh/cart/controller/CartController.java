package com.sh.cart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.sh.common.util.ObjectUtil;
import com.sh.common.vo.SysResult;
import com.sh.cart.pojo.Cart;
import com.sh.cart.service.CartService;

@RestController//Controller ResponseBody
public class CartController {
	@Autowired
	private CartService cartService;
	//查询我的购物车,userId
	@RequestMapping("cart/query/{userId}")
	public SysResult queryCarts(@PathVariable Long userId){
		List<Cart> cartList=cartService.queryCarts(userId);
		return SysResult.oK(cartList);
	}
	//购物车新增
	@RequestMapping("/cart/save")
	public SysResult saveCart(@RequestBody String cartJson){
		try{
			Cart cart=ObjectUtil.mapper.readValue(cartJson, Cart.class);
			System.out.println("2222222222222"+cart);
			
			cartService.saveCart(cart);
			return SysResult.oK();
		}catch(Exception e){
			e.printStackTrace();
			return SysResult.build(201, "新增购物车失败");
		}
	}
	//更新商品数量
	//@RequestMapping("cart/update/num/{userId}/{itemId}/{num}")
	@RequestMapping("cart/updateCount/count/{userId}/{commodityId}/{count}")
	public SysResult updateNumCart(@PathVariable Long userId,
			@PathVariable Long commodityId,
			@PathVariable Integer count 
			){
		try{
			cartService.updateCart(userId,commodityId,count);
			return SysResult.oK();
		}catch(Exception e){
			e.printStackTrace();
			return SysResult.build(201, "修改购物车失败");
		}	
	}
	
	@RequestMapping("cart/delete/{userId}/{commodityId}")
	public SysResult deleteNumCart(@PathVariable Long userId,
			@PathVariable Long commodityId){
		try{
			cartService.deleteCart(userId,commodityId);
			return SysResult.oK();
		}catch(Exception e){
			e.printStackTrace();
			return SysResult.build(201, "修改购物车失败");
		}	
	}
	}
















