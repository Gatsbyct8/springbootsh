package com.sh.manage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sh.manage.mapper.CommodityImageMapper;
import com.sh.manage.mapper.CommodityMapper;
import com.sh.manage.pojo.Commodity;
import com.sh.manage.pojo.CommodityImg;

@Service
public class CommodityService {
	@Autowired
	private CommodityMapper commodityMapper;
	
	public Commodity getCom(Long commodityId) {
		return commodityMapper.selectByPrimaryKey(commodityId);
	}
	
	@Autowired
	private CommodityImageMapper commodityImgMapper;
	
	public CommodityImg getComImg(Long commodityId) {
		CommodityImg commodityImg=new CommodityImg();
		commodityImg.setCommodityId(commodityId);
		commodityImg=commodityImgMapper.selectOne(commodityImg);
		System.out.println(commodityImg);
		return commodityImg;
	}

	public List<Commodity> getAllCom() {
		
		return commodityMapper.selectAll();
	}

	public List<Commodity> getTenCom() {
		
		return commodityMapper.selectTenCom();
	}

}
