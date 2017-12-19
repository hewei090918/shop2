package com.web.shop.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.shop.common.bean.TreeNodeBean;
import com.web.shop.domain.Dept;
import com.web.shop.service.DeptService;
/**
 * 
 * 包名：com.web.shop.controller <br/>
 * 类名：DeptController.java <br/>
 * 版本：version 1.0 <br/>
 * 作者：HeWei <br/>
 * 描述：部门管理控制层
 */
@Controller
@RequestMapping("/dept")
public class DeptController {

	@Autowired
	private DeptService deptService;
	
	@RequestMapping(value="/findDeptTree")
	public @ResponseBody List<TreeNodeBean> findDeptTree() {
		List<TreeNodeBean> treeNodeBeans = new ArrayList<TreeNodeBean>();
		List<Dept> list = deptService.findAll();
		TreeNodeBean bean = null;
		if(null != list && list.size() > 0) {
			for(Dept dept: list){
				if(dept.getParentId() == 0) {
					bean = new TreeNodeBean();
					bean.setId(dept.getDeptId()+"");
					bean.setText(dept.getDeptName());
				    bean.setNodes(this.findChildren(dept.getDeptId()));
					treeNodeBeans.add(bean);
				}
			}
			
		}
		return treeNodeBeans;
	}
	
	private List<TreeNodeBean> findChildren(int parentId) {
		List<TreeNodeBean> treeNodeBeans = new ArrayList<TreeNodeBean>();
		List<Dept> list = deptService.findByParentId(parentId);
		TreeNodeBean bean = null;
		if(null != list && list.size() > 0) {
			for(Dept dept: list) {
				if(dept.getParentId() == parentId) {
					bean = new TreeNodeBean();
					bean.setId(dept.getDeptId()+"");
					bean.setText(dept.getDeptName());
					if(this.findChildren(dept.getDeptId()).size() > 0) {
						bean.setNodes(this.findChildren(dept.getDeptId()));
					}
					treeNodeBeans.add(bean);
				}
			}
		}
		return treeNodeBeans;
	}
	
}
