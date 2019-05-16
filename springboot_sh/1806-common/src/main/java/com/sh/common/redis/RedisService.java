package com.sh.common.redis;

import java.util.HashSet;
import java.util.Set;

import org.apache.commons.pool2.impl.GenericObjectPoolConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import redis.clients.jedis.HostAndPort;
import redis.clients.jedis.JedisCluster;
import redis.clients.jedis.ShardedJedis;
import redis.clients.jedis.ShardedJedisPool;

@Service
public class RedisService {
	@Autowired(required=false)
	private ShardedJedisPool pool;
	//set方法无超时
	//set方法有超时
	//exists方法
	//get方法
	//del
	
	public void set(String key,String value){
		//ShardedJedis jedis = pool.getResource();
		Set<HostAndPort> nodes=new HashSet<HostAndPort>();
		nodes.add(new HostAndPort("47.100.221.203", 7001));
		nodes.add(new HostAndPort("47.100.221.203", 7002));
		nodes.add(new HostAndPort("47.100.221.203", 7003));
		nodes.add(new HostAndPort("47.100.221.203", 7004));
		nodes.add(new HostAndPort("47.100.221.203", 7005));
		nodes.add(new HostAndPort("47.100.221.203", 7006));
		
		//构造一个配置对象,为底层初始化连接池做准备;
		GenericObjectPoolConfig config=new GenericObjectPoolConfig();
		config.setMaxTotal(200);
		config.setMaxIdle(8);
		
		//构造一个jedisCLuster对象,操作集群

		JedisCluster jc = new JedisCluster(nodes,new GenericObjectPoolConfig());
		
		
		jc.set(key, value);
	}
	public void set(String key,String value,Integer seconds){
		//ShardedJedis jedis = pool.getResource();
				Set<HostAndPort> nodes=new HashSet<HostAndPort>();
				nodes.add(new HostAndPort("localhost", 8000));
//				nodes.add(new HostAndPort("118.25.181.24", 8000));
//				nodes.add(new HostAndPort("119.29.174.167", 8001));
//				nodes.add(new HostAndPort("172.16.0.11", 8002));
//				nodes.add(new HostAndPort("132.232.64.89", 8003));
//				nodes.add(new HostAndPort("132.232.123.209", 8004));
//				nodes.add(new HostAndPort("148.70.108.163", 8005));
				
				//构造一个配置对象,为底层初始化连接池做准备;
				GenericObjectPoolConfig config=new GenericObjectPoolConfig();
				config.setMaxTotal(200);
				config.setMaxIdle(8);
				
				//构造一个jedisCLuster对象,操作集群

				JedisCluster jc = new JedisCluster(nodes,new GenericObjectPoolConfig());
				
				jc.set(key, value);
				jc.expire(key, seconds);
				//pool.returnResource(jedis);
	}
	public Boolean exists(String key){
		//ShardedJedis jedis = pool.getResource();
				Set<HostAndPort> nodes=new HashSet<HostAndPort>();
				nodes.add(new HostAndPort("localhost", 8000));
//				nodes.add(new HostAndPort("118.25.181.24", 8000));
//				nodes.add(new HostAndPort("119.29.174.167", 8001));
//				nodes.add(new HostAndPort("172.16.0.11", 8002));
//				nodes.add(new HostAndPort("132.232.64.89", 8003));
//				nodes.add(new HostAndPort("132.232.123.209", 8004));
//				nodes.add(new HostAndPort("148.70.108.163", 8005));
				
				//构造一个配置对象,为底层初始化连接池做准备;
				GenericObjectPoolConfig config=new GenericObjectPoolConfig();
				config.setMaxTotal(200);
				config.setMaxIdle(8);
				
				//构造一个jedisCLuster对象,操作集群

				JedisCluster jc = new JedisCluster(nodes,new GenericObjectPoolConfig());
				
				
				Boolean exists = jc.exists(key);
				//pool.returnResource(jedis);
				return exists;
	}
	public String get(String key){
		//ShardedJedis jedis = pool.getResource();
				Set<HostAndPort> nodes=new HashSet<HostAndPort>();
				nodes.add(new HostAndPort("localhost", 8000));
//				nodes.add(new HostAndPort("118.25.181.24", 8000));
//				nodes.add(new HostAndPort("119.29.174.167", 8001));
//				nodes.add(new HostAndPort("172.16.0.11", 8002));
//				nodes.add(new HostAndPort("132.232.64.89", 8003));
//				nodes.add(new HostAndPort("132.232.123.209", 8004));
//				nodes.add(new HostAndPort("148.70.108.163", 8005));
				
				//构造一个配置对象,为底层初始化连接池做准备;
				GenericObjectPoolConfig config=new GenericObjectPoolConfig();
				config.setMaxTotal(200);
				config.setMaxIdle(8);
				
				//构造一个jedisCLuster对象,操作集群

				JedisCluster jc = new JedisCluster(nodes,new GenericObjectPoolConfig());
				
				
				String value = jc.get(key);
				//pool.returnResource(jedis);
				return value;
	}
	public void del(String key){
		//ShardedJedis jedis = pool.getResource();
				Set<HostAndPort> nodes=new HashSet<HostAndPort>();
				nodes.add(new HostAndPort("localhost", 8000));
//				nodes.add(new HostAndPort("118.25.181.24", 8000));
//				nodes.add(new HostAndPort("119.29.174.167", 8001));
//				nodes.add(new HostAndPort("172.16.0.11", 8002));
//				nodes.add(new HostAndPort("132.232.64.89", 8003));
//				nodes.add(new HostAndPort("132.232.123.209", 8004));
//				nodes.add(new HostAndPort("148.70.108.163", 8005));
				
				//构造一个配置对象,为底层初始化连接池做准备;
				GenericObjectPoolConfig config=new GenericObjectPoolConfig();
				config.setMaxTotal(200);
				config.setMaxIdle(8);
				
				//构造一个jedisCLuster对象,操作集群

				JedisCluster jc = new JedisCluster(nodes,new GenericObjectPoolConfig());
			
				jc.del(key);
				//pool.returnResource(jedis);
	}
	
	
	
	
	
}
