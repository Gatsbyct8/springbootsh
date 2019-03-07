package com.sh.manage.mapper;

import com.sh.common.mapper.MyMapper;
import com.sh.manage.pojo.CommodityCat;


public  interface CatMapper extends MyMapper<CommodityCat> {
	CommodityCat selectParentCat();

}
