package com.sh.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sh.user.pojo.User;
import com.sh.user.pojo.UserDetail;
import com.sh.user.service.UserDetailService;
import com.sh.user.service.UserService;
@Controller
public class UserDetailController {
	@Autowired
	private UserDetailService userDetailService;
	
	//http://localhost:8091/personalCenter/more/1
	@RequestMapping("personalCenter/more/{userDetailId}")
	@ResponseBody
	public UserDetail getUserDetail(@PathVariable Long userDetailId){
		UserDetail userDetail = userDetailService.getMyUserDetail(userDetailId);
		return userDetail;
	}
}
