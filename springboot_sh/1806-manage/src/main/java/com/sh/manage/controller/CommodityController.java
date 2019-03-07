package com.sh.manage.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sh.common.vo.SysResult;
import com.sh.manage.pojo.Commodity;
import com.sh.manage.pojo.CommodityImg;
import com.sh.manage.service.CommodityService;


@RestController
public class CommodityController {
	@Autowired
	private CommodityService commodityService;
	
	@RequestMapping("getCommodity/{commodityId}")
	public Commodity getCom(@PathVariable Long commodityId) {
		Commodity commondity=commodityService.getCom(commodityId);
		System.out.println(commondity.getName());
		return commondity;
	}
	@RequestMapping("getCommodityImg/{commodityId}")
	public SysResult getComImg(@PathVariable Long commodityId) {
		CommodityImg img=commodityService.getComImg(commodityId);
		List<String> imgList=new ArrayList<>();
		imgList.add(img.getCommodityBigImage());
		imgList.add(img.getCommoditySmallImage());
		return new SysResult(imgList);
	}
	
	@RequestMapping("queryCommodity")
	public SysResult getAllCommodity() {
		List<Commodity> commodityList=commodityService.getAllCom();
		return new SysResult(commodityList);
	}
	
	@RequestMapping("indexCommodity")
	public SysResult getTenCommodity() {
		List<Commodity> commodityList=commodityService.getTenCom();
		return new SysResult(commodityList);
	}
	
	
	

}
