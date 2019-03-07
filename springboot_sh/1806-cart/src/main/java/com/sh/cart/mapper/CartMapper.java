package com.sh.cart.mapper;

import com.sh.common.mapper.MyMapper;
import com.sh.cart.pojo.Cart;

public interface CartMapper extends MyMapper<Cart>{

	void updateNum(Cart cart);
	void deleteCart(Cart cart);

}
