package com.sh.config;

import java.net.InetAddress;

import org.elasticsearch.client.transport.TransportClient;
import org.elasticsearch.common.settings.Settings;
import org.elasticsearch.common.transport.InetSocketTransportAddress;
import org.elasticsearch.transport.client.PreBuiltTransportClient;
import org.springframework.beans.factory.FactoryBean;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
@Configuration
public class ESConfig implements InitializingBean,FactoryBean<TransportClient>{
    @Value("${cluster-name}")
    private String clusterName;
    @Value("${cluster-nodes}")
    private String nodes;
    
    private TransportClient client;
    @Override
	public void afterPropertiesSet() throws Exception {
        Settings settings=Settings.builder().put("cluster.name",clusterName).build();
        client=new PreBuiltTransportClient(settings);
        String[] hostAndPort = nodes.split(",");
        for (String node : hostAndPort) {
			String host=node.split(":")[0];
			int port=Integer.parseInt(node.split(":")[1]);
		
        client.addTransportAddress(
        		new InetSocketTransportAddress(
        				InetAddress.getByName(host),port));
        }
      }
	@Override
	public TransportClient getObject() throws Exception {
		return client;
	}
	@Override
	public Class<?> getObjectType() {
		return TransportClient.class;
	}
	@Override
	public boolean isSingleton() {
		// TODO Auto-generated method stub
		return false;
	}
	

}
