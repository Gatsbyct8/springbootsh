package com.sh.manage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sh.manage.mapper.CommodityImageMapper;
import com.sh.manage.mapper.CommodityMapper;
import com.sh.manage.pojo.Commodity;
import com.sh.manage.pojo.CommodityImg;

import javax.annotation.Resource;

@Service
public class CommodityService {
	@Resource
	private CommodityMapper commodityMapper;
	
	public Commodity getCom(Long commodityId) {
		return commodityMapper.selectByPrimaryKey(commodityId);
	}

	@Resource
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
