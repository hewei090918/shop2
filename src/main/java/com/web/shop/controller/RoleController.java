package com.web.shop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.shop.bean.query.RoleFilter;
import com.web.shop.common.bean.JsonResult;
import com.web.shop.common.bean.PageViewBean;
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
	
	@RequestMapping(value = "/queryPage")
	public 
	@ResponseBody PageViewBean<Role> queryPage(@ModelAttribute RoleFilter filter) {
		PageViewBean<Role> pageView = new PageViewBean<Role>();
		int total = roleService.count(filter);
		List<Role> data = roleService.find(filter);
		pageView.setTotal(total);
		pageView.setData(data);
		return pageView;
	}
	
	@RequestMapping(value = "/deleteRole")
	public 
	@ResponseBody JsonResult deleteRole(@RequestParam String ids) {
		JsonResult result = new JsonResult();
		boolean success = roleService.delete(ids);
		if(success) {
			result.setSuccess(true);
			result.setMessage("删除角色成功!");
		}else{
			result.setSuccess(false);
			result.setMessage("删除角色失败!");
		}
		return result;
	}
	
}
