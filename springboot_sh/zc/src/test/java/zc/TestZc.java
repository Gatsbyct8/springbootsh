package zc;

import org.elasticsearch.action.index.IndexResponse;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.client.transport.TransportClient;
import org.elasticsearch.common.xcontent.XContentType;
import org.elasticsearch.index.query.MatchQueryBuilder;
import org.elasticsearch.index.query.Operator;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.rest.RestStatus;
import org.elasticsearch.search.SearchHits;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class TestZc {
	@Autowired
	private TransportClient client;
	@Test
	public void test01(){
		MatchQueryBuilder query = QueryBuilders.
				matchQuery("name", 9).
				operator(Operator.AND);
		SearchResponse response = client.prepareSearch("opinion_system").
				setQuery(query).setFrom(12*(1-1)).setSize(12).get();

		SearchHits hits = response.getHits();
//		Map<String, Object> json = new HashMap<String, Object>();
//		json.put("user", "kimchy");
//		json.put("postDate", new Date());
//		json.put("message", "trying out Elasticsearch");
//		IndexResponse indexResponse = client.prepareIndex("twitter", "_doc", "1").setSource(json, XContentType.JSON).get();
//		// Index name
//		String _index = indexResponse.getIndex();
//		// Type name
//		String _type = indexResponse.getType();
//		// Document ID (generated or not)
//		String _id = indexResponse.getId();
//		// Version (if it's the first time you index this document, you will get: 1)
//		long _version = indexResponse.getVersion();
//		// status has stored current instance statement.
//		RestStatus status = indexResponse.status();
//		//on shutdown
//		client.close();
	}
}
