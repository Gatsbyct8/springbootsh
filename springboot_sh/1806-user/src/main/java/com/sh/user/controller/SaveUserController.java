package com.sh.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.sh.common.util.ObjectUtil;
import com.sh.common.vo.SysResult;
import com.sh.user.pojo.UserDetail;
import com.sh.user.service.SaveUserService;
import com.sh.user.service.UserDetailService;

@Controller
public class SaveUserController {

	@Autowired
	private SaveUserService saveUserService;
    @Autowired
    private UserDetailService userDetailService;
	//http://localhost:8091/personalCenter/username/1/666
	// 保存用户名
	@RequestMapping("personalCenter/username/{userId}/{username}")
	@ResponseBody
	public String SaveUser(@PathVariable Long userId, @PathVariable String username, String callback) throws Exception {
		SysResult sys = saveUserService.saveUser(userId, username);
		return callback + "(" + ObjectUtil.mapper.writeValueAsString(sys) + ")";
	}

	// 保存手机
	@RequestMapping("personalCenter/phone/update/{userId}/{phone}")
	@ResponseBody
	public String SaveUserPhone(@PathVariable Long userId, @PathVariable String phone, String callback) throws Exception {
		SysResult sys = saveUserService.saveUserPhone(userId, phone);
		return callback + "(" + ObjectUtil.mapper.writeValueAsString(sys) + ")";
	}
	
	//保存userDetail
	@RequestMapping("personalCenter/updateUserDetail")
	public SysResult updateUserDetail(@RequestBody String detailJson){
		try{
		   UserDetail detail=ObjectUtil.mapper.readValue(detailJson, UserDetail.class);
		   userDetailService.updateUserDetail(detail);
		   return SysResult.oK();
		}catch(Exception e){
			e.printStackTrace();
			return SysResult.build(201, "保存失败，请重试！");
		}
	}

}
