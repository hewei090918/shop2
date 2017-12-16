package com.web.shop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.shop.bean.query.UserFilter;
import com.web.shop.common.bean.PageViewBean;
import com.web.shop.domain.User;
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
	
	@RequestMapping(value = "/query")
	public @ResponseBody PageViewBean<User> query(@ModelAttribute UserFilter filter) {
		System.out.println("pageSize : " + filter.getLimit());
		PageViewBean<User> pageView = new PageViewBean<User>();
		int total = userService.count(filter);
		pageView.setTotal(total);
		List<User> data = userService.find(filter);
		pageView.setData(data);
		pageView.setPageBean(filter);
		return pageView;
	}
	
}
