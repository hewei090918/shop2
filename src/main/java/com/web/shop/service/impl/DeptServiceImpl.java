package com.web.shop.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.web.shop.domain.Dept;
import com.web.shop.mapper.DeptMapper;
import com.web.shop.service.DeptService;

public class DeptServiceImpl implements DeptService {

	@Autowired
	private DeptMapper deptMapper;
	
	@Override
	public Dept findById(int deptId) {
		return deptMapper.selectByPrimaryKey(deptId);
	}

}
