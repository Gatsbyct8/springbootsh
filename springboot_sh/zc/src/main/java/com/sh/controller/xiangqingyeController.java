package com.sh.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sh.pojo.Commodity;

import com.sh.service.CommodityService;



@Controller
public class xiangqingyeController {
	@Autowired
	private CommodityService commodityService;

	@RequestMapping("product_details/{commodityId}")
	public String goIndex(@PathVariable Long commodityId,
			Model model) throws Exception{
		System.out.println(commodityId);
	Commodity item=commodityService.queryItem(commodityId);
	model.addAttribute("commodity", item);
	return "product_details";
	}
}
