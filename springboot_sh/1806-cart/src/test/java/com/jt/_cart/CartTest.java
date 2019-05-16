package com.jt._cart;

import java.io.UnsupportedEncodingException;
import java.util.HashSet;
import java.util.Set;

import com.sh.cart.pojo.Cart;
import com.sh.common.service.HttpClientService;
import com.sh.common.util.ObjectUtil;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import redis.clients.jedis.HostAndPort;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisCluster;

public class CartTest {

	private HttpClientService client=new HttpClientService();
		@Test
		public void test() throws Exception{

			String url="http://localhost:8092/cart/save";
			String url1="http://localhost:8091/getCommodity/"+1;
			//String url2="http://manage.sh.com/getCommodityImg/"+commodityId;
			String url2="http://localhost:8091/getCommodityImg/"+1;
			String commodityJson = client.doGet(url1);
			Cart cart=new Cart();
			cart.setCartId(1l);
			cart.setCommodityId(1l);
			cart.setUserId(1l);
			cart.setName("1");
			cart.setPrice((long)1);
			cart.setMianImage("1");
			cart.setCount(1);
			String params= ObjectUtil.mapper.writeValueAsString(cart);
			System.out.println(params);
			client.doPostJson(url,params);

//			Set<HostAndPort> nodes=new HashSet<HostAndPort>();
//			nodes.add(new HostAndPort("47.100.221.203", 7001));
//			nodes.add(new HostAndPort("47.100.221.203", 7002));
//			nodes.add(new HostAndPort("47.100.221.203", 7003));
//			nodes.add(new HostAndPort("47.100.221.203", 7004));
//			nodes.add(new HostAndPort("47.100.221.203", 7005));
//			nodes.add(new HostAndPort("47.100.221.203", 7006));
//			JedisCluster cluster = new JedisCluster(nodes);
//			try {
//				String res = cluster.get("name");
//				System.out.println(res);
//				//cluster.close();
//			} catch (Exception e) {
//				e.printStackTrace();
//				//cluster.close();
//			}
		}
}
