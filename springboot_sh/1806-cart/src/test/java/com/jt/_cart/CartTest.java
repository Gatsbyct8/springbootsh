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
