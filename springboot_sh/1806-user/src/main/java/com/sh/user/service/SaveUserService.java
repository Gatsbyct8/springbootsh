package com.sh.user.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sh.common.vo.SysResult;
import com.sh.user.mapper.SaveUserMapper;
import com.sh.user.pojo.User;

@Service
public class SaveUserService {
	
	@Autowired
	private SaveUserMapper saveUserMapper;
	
	//保存用户名
	public SysResult saveUser(Long userId, String username) {
		User user = new User();
		user.setUserId(userId);
		user = saveUserMapper.selectOne(user);
		user.setUpdateTime(new Date());
		user.setUsername(username);
		int i=saveUserMapper.updateByPrimaryKeySelective(user);
		if(i!=0){
			return  SysResult.oK(user.getUsername());
		}else{
			return SysResult.build(201, "false");
		}
	}
	
	//保存手机
	public SysResult saveUserPhone(Long userid, String phone) {
		User user = saveUserMapper.selectByPrimaryKey(userid);
		user.setPhone(phone);
		int i=saveUserMapper.updateByPrimaryKeySelective(user);
		if(i!=0){
			return SysResult.oK(user.getPhone());
		}else{
			return SysResult.build(201, "false");
		}
	}

}
