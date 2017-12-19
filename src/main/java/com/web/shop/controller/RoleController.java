package com.web.shop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.shop.domain.Role;
import com.web.shop.service.RoleService;
/**
 * 
 * 包名：com.web.shop.controller <br/>
 * 类名：RoleController.java <br/>
 * 版本：version 1.0 <br/>
 * 作者：HeWei <br/>
 * 描述：角色管理控制层
 */
@Controller
@RequestMapping("/role")
public class RoleController {

	@Autowired
	private RoleService roleService;
	
	@RequestMapping(value = "/getList")
	public @ResponseBody List<Role> getList() {
		return roleService.findAll();
	}
	
}
