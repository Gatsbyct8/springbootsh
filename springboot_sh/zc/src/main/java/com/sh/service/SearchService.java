package com.sh.service;

import java.util.ArrayList;
import java.util.List;

import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.client.transport.TransportClient;
import org.elasticsearch.index.query.MatchQueryBuilder;
import org.elasticsearch.index.query.Operator;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.search.SearchHit;
import org.elasticsearch.search.SearchHits;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sh.common.service.HttpClientService;
import com.sh.pojo.Commodity;
import com.sh.pojo.CommodityImg;

@Service
public class SearchService {
	@Autowired
	private TransportClient client;

	@Autowired
	private HttpClientService clientServer;
	
	public List<Commodity> findCommoditys(String q,Integer page) throws Exception {
		//构造查询条件,matchQuery
		MatchQueryBuilder query = QueryBuilders.
				matchQuery("name", q).
				operator(Operator.AND);
		SearchResponse response = client.prepareSearch("commodity").
		setQuery(query).setFrom(12*(page-1)).setSize(12).get();
		
		SearchHits hits = response.getHits();
		
		//从hits中封装 CommodityList
		List<Commodity> CommodityList=new ArrayList<Commodity>();
		for (SearchHit hit: hits) {
			//封装数据 price title sellpoint image id
			Commodity Commodity=new Commodity();
			Commodity.setCommodityId((int)hit.getSource().get("commodity_id")+0L);
			Commodity.setPrice((int)hit.getSource().get("price")+0l);
			Commodity.setName(hit.getSource().get("title")+"");
			Commodity.setDetailSpecification(hit.getSource().get("detail_specification")+"");
			CommodityList.add(Commodity);
		}
		ObjectMapper mapper = new ObjectMapper();
		for (int i=0;i<CommodityList.size();i++) {
			System.out.println("......................."+CommodityList.get(i));
			Commodity commodity=CommodityList.get(i);
			String url2="http://manage.sh.com/getCommodityImg/"+CommodityList.get(i).getCommodityId();
			System.out.println("--------------"+CommodityList.get(i).getCommodityId());
			String itemJson2 = clientServer.doGet(url2);
			System.out.println("11111111111--------"+itemJson2);
			JSONObject jsonObject2=new JSONObject(itemJson2);
			JavaType javaType2 = mapper.getTypeFactory().constructParametricType(ArrayList.class, String.class);
			
		    List<String> commodityImg =mapper.readValue(jsonObject2.get("data").toString(), javaType2);
			commodity.setCommodityBigImage(commodityImg.get(0));
			commodity.setCommoditySmallImage(commodityImg.get(1));
		
		}
		return CommodityList;
	}

}
