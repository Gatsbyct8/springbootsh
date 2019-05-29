package com.sh.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sh.common.vo.SysResult;
import com.sh.user.mapper.UserDetailMapper;
import com.sh.user.pojo.User;
import com.sh.user.pojo.UserDetail;

import javax.annotation.Resource;

@Service
public class UserDetailService {
	
	@Resource
	private UserDetailMapper userDetailMapper;
	
	public UserDetail getMyUserDetail(Long userDetailId) {
		
		UserDetail userDetail = new UserDetail();
		userDetail.setUserDetailId(userDetailId);
		userDetail = userDetailMapper.selectOne(userDetail);
		System.out.println(userDetail);
		return userDetail;
	}

	public void updateUserDetail(UserDetail detail) {
		//userDetailMapper.updateUserDetail(detail);
		//userDetailMapper.updateByPrimaryKeySelective(detail);
		userDetailMapper.updateByPrimaryKey(detail);
	}

    public void addMyUserDetail(Long userDetailId) {
		UserDetail detail=new UserDetail();
		detail.setUserDetailId(userDetailId);
		detail.setBirthday("1970-01-01");
		detail.setEmail("123@123.com");
		detail.setSex("男");
		userDetailMapper.insert(detail);
    }
}
/*User user=new User();
user.setUserId(userid);
user = usermapper.selectOne(user);
System.out.println(user);
return user;*/