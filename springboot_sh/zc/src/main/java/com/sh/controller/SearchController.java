package com.sh.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sh.pojo.Commodity;
import com.sh.pojo.Q;
import com.sh.service.SearchService;


@Controller
public class SearchController {
	@Autowired
	private SearchService searcher;
		//接收前台的数据,查询q对应的title名称的数据,分页返回
	@RequestMapping("searchFirst")
	public String search(Model model,Q q) throws Exception{
		List<Commodity> commodityList=searcher.findCommoditys(q.getQ(),1);
		model.addAttribute("commodityList", commodityList);
		model.addAttribute("query", q.getQ());
		model.addAttribute("page", 1);
		return "products";
	}
	
	@RequestMapping("searchNext/{q}/{page}")
	public String search(@PathVariable String q,@PathVariable int page,Model model) throws Exception{
		page+=1;
		List<Commodity> commodityList=searcher.findCommoditys(q,page);
		model.addAttribute("commodityList", commodityList);
		
		model.addAttribute("query", q);
		model.addAttribute("page", page);
		return "products";
	}
	
	@RequestMapping("searchLast/{q}/{page}")
	public String search(@PathVariable String q,Model model,@PathVariable int page) throws Exception{
		if(page>1) 
		   page-=page;
		List<Commodity> commodityList=searcher.findCommoditys(q,page);
		model.addAttribute("commodityList", commodityList);
		model.addAttribute("query", q);
		model.addAttribute("page", page);
		return "products";
	}
	
	
}
