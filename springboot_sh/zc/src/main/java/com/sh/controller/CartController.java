package com.sh.controller;

import java.util.List;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sh.common.util.ObjectUtil;
import com.sh.common.vo.SysResult;
import com.sh.pojo.Cart;
import com.sh.service.CartService;

@Controller	
public class CartController {
	@Autowired
	private CartService cartService;
	//查询购物车
	@RequestMapping("cart/show")
	public String showCart(Model model,HttpServletRequest request) throws Exception{
		//userId怎么来？？？
//		Long userId=1L;
		Long userId=(Long) request.getAttribute("userId");
		//System.out.println(userId);
		List<Cart> cartList=cartService.queryCart(userId);
		model.addAttribute("cartList", cartList);
		return "cart";
	}
	
	//保存购物车
	@RequestMapping("cart/add/{commodityId}")
	public String addCart(HttpServletRequest request,
			@PathVariable Long commodityId,Integer num) throws Exception{
		//从拦截器逻辑获取userId
		Long userId=(long)request.getAttribute("userId");
		//Long userId=1L;
		cartService.addCart(userId,commodityId,num);
		return "redirect:/cart/show.html";
	}
	//更新商品数量
	@RequestMapping("cart/update/num/{commodityId}/{num}")
	@ResponseBody
	public String updateNum(HttpServletRequest request,
			@PathVariable Long commodityId,
			@PathVariable Integer num) throws Exception{
		//Long userId=1L;
		Long userId=(long)request.getAttribute("userId");
		String result=cartService.updatedNum(userId,commodityId,num);
		return result;
	}
	
	//删除购物车
	@RequestMapping("cart/delete/{commodityId}")
	public String deleteCart(HttpServletRequest request,
			@PathVariable Long commodityId) throws Exception{
//		Long userId=1L;
		Long userId=(long)request.getAttribute("userId");
		String sysResult= cartService.deleteCart(userId,commodityId);
		String data=ObjectUtil.mapper.readValue(sysResult, SysResult.class).getMsg();
		System.out.println(data);
		
		return "redirect:/cart/show.html";
	}
}

























