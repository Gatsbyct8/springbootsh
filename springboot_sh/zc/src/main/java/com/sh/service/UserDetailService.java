package com.sh.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sh.common.config.HttpClient;
import com.sh.common.service.HttpClientService;
import com.sh.common.util.ObjectUtil;
import com.sh.pojo.User;
import com.sh.pojo.UserDetail;
@Service
public class UserDetailService {
	@Autowired
	HttpClientService client;
	public UserDetail goMyUserDateil(Long userId) throws Exception{
		String url="http://user.sh.com/personalCenter/more/"+userId;
		String userDateilJson=client.doGet(url);
		UserDetail userDetail=ObjectUtil.mapper.readValue(userDateilJson, UserDetail.class);
		System.out.println("后台传来的数据:"+userDetail);
		return userDetail;
	}

}
