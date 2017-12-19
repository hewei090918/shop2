package com.web.shop.service;

import java.util.List;

import com.web.shop.domain.Dept;

public interface DeptService {

	Dept findById(int deptId);
	
	List<Dept> findAll();
	
	List<Dept> findByParentId(int parentId);
	
}
