package com.sh.controller;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sh.common.util.CookieUtils;
import com.sh.common.vo.SysResult;
import com.sh.pojo.User;
import com.sh.pojo.UserDetail;
import com.sh.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	//用户注册数据提交
	@RequestMapping("/service/user/doRegister")
	
	public String doRegister(User user,Model model) throws Exception{
		int status=userService.doRegister(user);
		System.out.println(status);
		if(status==200){
			userService.doRegister(user);
			model.addAttribute("msg", "注册成功，请重新登录");
			model.addAttribute("phone", user.getPhone());
			return "redirect:/login.html";
		}else{
			model.addAttribute("msg", "注册失败");
			return "redirect:/regist.html";
		}
	}
	//登录功能
	@RequestMapping("/service/user/doLogin")
	
	public String doLogin(User user,HttpServletRequest request,
			HttpServletResponse response,Model model) throws Exception{
		System.out.println(user);
		String ticket=userService.doLogin(user);
		//判断是否有登录结果;一旦失败,ticket为空
		if("".equals(ticket)||"null".equals(ticket)||ticket==null){
			//登录失败 ajax提交,返回失败信息,201
			model.addAttribute("msg","用户名或密码错误");
			return "redirect:/login.html";
		}else{
			//登录成功
			//将ticket放到cookie中返回SysResult对象
			CookieUtils.setCookie(request, response, 
					"JT_TICKET", ticket);
			return "loginSucess";
		}
			
		}
	@RequestMapping("/myuser/personalCenter/updateUserDetail")
	public String saveUserDetail(HttpServletRequest request,UserDetail userDetail) throws Exception{
		long userId=(long) request.getAttribute("userId");
		
		userDetail.setUserDetailId(userId);
		System.out.println(userDetail);
		String result=userService.saveUserDetail(userDetail);
		System.out.println("完成userDetail的插入"+userDetail);
		return "redirect:/myuser/center.html";
	}
	
}































