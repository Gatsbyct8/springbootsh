package com.sh.service;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sh.common.redis.RedisService;
import com.sh.common.service.HttpClientService;
import com.sh.common.util.JSONToListUtil;
import com.sh.common.util.ObjectUtil;
import com.sh.common.vo.SysResult;
import com.sh.pojo.Commodity;



@Service
public class CommodityService {
	
	@Autowired
	private HttpClientService client;
	
	@Autowired
	private RedisService redisService;
	
	public Commodity queryItem(Long commodityId) throws Exception {
		/*//使用httpClient从后台获取数据,严格按照前台与后台的接口文件编写
		//url,参数,需要的数据*/
		//缓存逻辑,key,全局唯一 ITEM_id
		//判断存在缓存数据与否,
		//存在数据,直接返回,不存在,继续调用httpclient获取数据,获取回来添加缓存
		String key="ITEM_"+commodityId;
		if(redisService.exists(key)){
			//将数据解析成item对象,返回
			String itemJson=redisService.get(key);
			Commodity commodity = ObjectUtil.mapper.
					readValue(itemJson, Commodity.class);
			return commodity;
		}else{
			//先从后台获取
			//String url1="http://manage.sh.com/getCommodity/"+commodityId;
			String url1="http://localhost:8091/getCommodity/"+commodityId;
			//String url2="http://manage.sh.com/getCommodityImg/"+commodityId;
			String url2="http://localhost:8091/getCommodityImg/"+commodityId;
			//httpCLient发起请求,获取响应体的内容,json字符串,转化成item对象
			//System.out.println(key);
			String itemJson1 = client.doGet(url1);//响应体重的json字符串
			//String itemJson2 = client.doGet(url1);
			//存一份缓存
//			System.out.println(itemJson1);
//			System.out.println(key);
			Commodity commodity = ObjectUtil.mapper.
					readValue(itemJson1, Commodity.class);
			String itemJson2=client.doGet(url2);
			JSONObject jsonObject=new JSONObject(itemJson2);
			List<String> commodityImg=JSONToListUtil.jsonToList(jsonObject.get("data").toString(), String.class);
			System.out.println(commodityImg);
			commodity.setCommodityBigImage(commodityImg.get(0));
			commodity.setCommoditySmallImage(commodityImg.get(1));
			String itemJson=ObjectUtil.mapper.writeValueAsString(commodity);
			redisService.set(key,itemJson );
			return commodity;
			}
		}
//}

	public List<Commodity> getTenCom() throws Exception {
		String key="Index_ITEM_Yen";
		if(redisService.exists(key)){
			//将数据解析成item对象,返回
			String itemJson=redisService.get(key);
			List<Commodity> commodityList=(List<Commodity>) ObjectUtil.mapper.readValue(itemJson, SysResult.class).getData();
			return commodityList;
		}else{
			//先从后台获取
			String url1="http://manage.sh.com/indexCommodity";
			
			//httpCLient发起请求,获取响应体的内容,json字符串,转化成item对象
			
			String itemJson1 = client.doGet(url1);//响应体重的json字符串
			
			//存一份缓存
			//System.out.println(itemJson1);
			JSONObject jsonObject=new JSONObject(itemJson1);
			//System.out.println("1......."+jsonObject);
			
			ObjectMapper mapper = new ObjectMapper();
			JavaType javaType1 = mapper.getTypeFactory().constructParametricType(ArrayList.class, Commodity.class);
			
			 List<Commodity> commodityList =mapper.readValue(jsonObject.get("data").toString(), javaType1);
			
			for (int i=0;i<commodityList.size();i++) {
				System.out.println("......................."+commodityList.get(i));
				Commodity commodity=commodityList.get(i);
				//String url2="http://manage.sh.com/getCommodityImg/"+commodityList.get(i).getCommodityId();
				String url2="http://localhost:8091/getCommodityImg/"+commodityList.get(i).getCommodityId();
				System.out.println("--------------"+commodityList.get(i).getCommodityId());
				String itemJson2 = client.doGet(url2);
				System.out.println("11111111111--------"+itemJson2);
				JSONObject jsonObject2=new JSONObject(itemJson2);
				JavaType javaType2 = mapper.getTypeFactory().constructParametricType(ArrayList.class, String.class);
				
			    List<String> commodityImg =mapper.readValue(jsonObject2.get("data").toString(), javaType2);
				commodity.setCommodityBigImage(commodityImg.get(0));
				commodity.setCommoditySmallImage(commodityImg.get(1));
				
			}
			
			SysResult sys=new SysResult(commodityList);
			String itemJson=ObjectUtil.mapper.writeValueAsString(sys);
			redisService.set(key,itemJson );
			return commodityList;
		
	}
	}
	
}
