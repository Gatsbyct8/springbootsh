package com.sh.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sh.user.pojo.User;
import com.sh.user.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	//http://localhost:8091/personalCenter/1
	@RequestMapping("personalCenter/{userId}")
	@ResponseBody
	public User getUser(@PathVariable Long userId){
		User user = userService.getMyUser(userId);
		return user;
	}
	
	
	
}
