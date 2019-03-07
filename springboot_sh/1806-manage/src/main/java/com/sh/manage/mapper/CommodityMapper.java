package com.sh.manage.mapper;

import java.util.List;

import com.sh.common.mapper.MyMapper;
import com.sh.manage.pojo.Commodity;


public interface CommodityMapper extends MyMapper<Commodity>{
	List<Commodity> selectTenCom();

}
