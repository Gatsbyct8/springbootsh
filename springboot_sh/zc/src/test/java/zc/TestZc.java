package zc;

import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.client.transport.TransportClient;
import org.elasticsearch.index.query.MatchQueryBuilder;
import org.elasticsearch.index.query.Operator;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.search.SearchHits;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class TestZc {
	@Autowired
	private TransportClient client;
	@Test
	public void test01(){
		MatchQueryBuilder query = QueryBuilders.
				matchQuery("name", 1).
				operator(Operator.AND);
		SearchResponse response = client.prepareSearch("commodity").
				setQuery(query).setFrom(12*(1-1)).setSize(12).get();

		SearchHits hits = response.getHits();
	}
}
