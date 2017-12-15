package com.web.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.shop.service.UserService;

/**
 * 
 * 包名：com.web.shop.controller <br/>
 * 类名：UserController.java <br/>
 * 版本：version 1.0 <br/>
 * 作者：HeWei <br/>
 * 描述：用户管理控制层
 */
@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/query", method = RequestMethod.POST, produces = "text/html;charset=UTF-8")
	public @ResponseBody String query() {
		
		return "";
	}
}
