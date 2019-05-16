package com.sh.cart.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sh.cart.mapper.CartMapper;
import com.sh.cart.pojo.Cart;

import javax.annotation.Resource;

@Service
public class CartService {
	@Resource
	private CartMapper cartMapper;
	public List<Cart> queryCarts(Long userId) {
		//select * from tb_cart where user_id=#{userId}
		Cart _cart=new Cart();
		_cart.setUserId(userId);
		List<Cart> cartList=cartMapper.select(_cart);
		return cartList;
	}
	public void saveCart(Cart cart) {
		//判断是否存在,如果存在,如果不存在
		System.out.println("save............."+cart);
		Cart _cart=new Cart();
		_cart.setUserId(cart.getUserId());
		_cart.setCommodityId(cart.getCommodityId());
		//System.out.println(_cart);
		Cart exists=cartMapper.selectOne(_cart);
		
		if(exists!=null){//update
			//久数据+新数据
			Cart newCart=new Cart();//id,num,updated
			newCart.setCartId(exists.getCartId());
			//newCart.setUpdated(new Date());
			System.out.println(cart.getCount());
			newCart.setCount(exists.getCount()+cart.getCount());
			cartMapper.updateByPrimaryKeySelective(newCart);
		}else{//不存在
			cartMapper.insert(cart);
		}
		
	}
	public void updateCart(Long userId, Long commodityId, Integer count) {
		Cart cart=new Cart();
		cart.setUserId(userId);
		cart.setCommodityId(commodityId);
		cart.setCount(count);
		cartMapper.updateNum(cart);
	}
	public void deleteCart(Long userId, Long commodityId) {
		Cart cart=new Cart();
		cart.setUserId(userId);
		cart.setCommodityId(commodityId);
		//cart.setCount(count);
		cartMapper.deleteCart(cart);
	}
	

}
