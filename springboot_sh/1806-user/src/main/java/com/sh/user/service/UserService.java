package com.sh.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sh.user.mapper.UserDetailMapper;
import com.sh.user.mapper.UserMapper;
import com.sh.user.pojo.User;
import com.sh.user.pojo.UserDetail;

import javax.annotation.Resource;

@Service
public class UserService {
	
	@Resource
	private UserMapper usermapper;
	
	public User getMyUser(Long userId) {
		User user=new User();
		user.setUserId(userId);
		user = usermapper.selectOne(user);
		System.out.println(user);
		return user;
	}

	

}
