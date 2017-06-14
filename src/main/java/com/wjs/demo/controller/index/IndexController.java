package com.wjs.demo.controller.index;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wjs.demo.service.user.UserService;

@Controller
public class IndexController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping("/")
	public String index(HttpServletRequest request){
		
		request.setAttribute("users", userService.listUser());
		
		return "index";
	}
}
