package com.sh.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sh.pojo.Cart;
import com.sh.pojo.Commodity;
import com.sh.pojo.User;
import com.sh.pojo.UserDetail;
import com.sh.service.CommodityService;
import com.sh.service.UserDetailService;
import com.sh.service.UserService;



@Controller
public class IndexController {
	@Autowired
	private CommodityService commodityService;
	@Autowired
	private UserService userService;
	
	@Autowired
	private UserDetailService userDetailService;
	

	@RequestMapping("/index")
	public String goIndex(Model model) throws Exception{
		List<Commodity> commodityList=commodityService.getTenCom();
		System.out.println("++++++++++++++"+commodityList);
		model.addAttribute("commodityList",commodityList);
		if(commodityList instanceof List)
			System.out.println(true);
		
		return "index";
	}
	
	
	
	
	
	
	@RequestMapping("myuser/center")
	public String goMyuser(Model model,HttpServletRequest request) throws Exception{
		Long userId = (Long) request.getAttribute("userId");
		System.out.println("userId:"+userId);
		User user = userService.goMyuser(userId);
		UserDetail userDetail = userDetailService.goMyUserDateil(userId);
		//SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		//String birthday = sdf.format(userDetail.getBirthday());
		model.addAttribute("user",user);
		model.addAttribute("userDetail",userDetail);
		//model.addAttribute("birthday",birthday);
		return "myuser";
	}
	
	
}
