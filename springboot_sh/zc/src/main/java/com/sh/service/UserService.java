package com.sh.service;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.sh.common.service.HttpClientService;
import com.sh.common.util.ObjectUtil;
import com.sh.common.vo.HttpResult;
import com.sh.common.vo.SysResult;

import com.sh.pojo.User;
import com.sh.pojo.UserDetail;

@Service
public class UserService {
	@Autowired
	private HttpClientService client;
	
	
	public int doRegister(User user) throws Exception {
		//String url="http://sso.sh.com/user/register";
		String url="http://localhost:8096/user/register";
		//调用的doPost(url,map)
		//username=haha&password=124&phone=185,添加到请求体中传递
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("username", user.getUsername());
		map.put("password", user.getPassword());
		map.put("phone", user.getPhone());
		HttpResult response = client.doPost(url, map);
		String jsonData=response.getBody();
		System.out.println(jsonData);
		SysResult result=ObjectUtil.mapper.readValue(jsonData, SysResult.class);
		int status= result.getStatus();
		return status;
	}
	public String doLogin(User user) throws Exception {
		//String url="http://sso.sh.com/user/login";
		//String url="http://localhost:8096/user/login";
		String url="http://localhost:8096/user/login";
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("u", user.getPhone());
		map.put("p", user.getPassword());
		HttpResult response = client.doPost(url, map);
		System.out.println(response);
		String jsonData=response.getBody();
		//{"status":200,"msg":"ok"
		//"data":"213lhwei23lndsiy23o"}
		//从json中解析data的数据 ticket
		SysResult result=ObjectUtil.mapper.readValue(jsonData, SysResult.class);
		//字符串内容,在mapper传递转化过程,会添加额外的""   "json"
		String ticket=(String)result.getData();
		//如果登录失败有可能是"" "null"
		return ticket;
	}
	public User goMyuser(Long userId) throws Exception{
		//String url="http://user.sh.com/personalCenter/"+userId;
		String url="http://localhost:8096/personalCenter/"+userId;
		String userJson=client.doGet(url);
		System.out.println(userJson);
		User user=ObjectUtil.mapper.readValue(userJson, User.class);
		System.out.println("后台传来的数据:"+user);
		return user;
	}
	public String saveUserDetail(UserDetail userDetail) throws Exception {
		//String url="http://user.sh.com/personalCenter/updateUserDetail";
		String url="http://localhost:8096/personalCenter/updateUserDetail";
		String detailJson=ObjectUtil.mapper.writeValueAsString(userDetail);
		String result=client.doPostJson(url, detailJson);
		return result;
	}
}
