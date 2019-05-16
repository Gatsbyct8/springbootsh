package com.sh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class loginController {

	@RequestMapping("/login")
	public String goLogin(){
		return "login";
	}
	
	@RequestMapping("/regist")
	public String goRegister(){
		return "regist";
	}

//	@RequestMapping("/header")
//	public String goHeader(){
//		return "header";
//	}
//
//	@RequestMapping("/footer")
//	public String goFooter(){
//		return "footer";
//	}
	
	
}
