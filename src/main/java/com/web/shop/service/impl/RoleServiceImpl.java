package com.web.shop.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.web.shop.domain.Role;
import com.web.shop.mapper.RoleMapper;
import com.web.shop.service.RoleService;

public class RoleServiceImpl implements RoleService {

	@Autowired
	private RoleMapper roleMapper;
	
	@Override
	public Role findById(int roleId) {
		return roleMapper.selectByPrimaryKey(roleId);
	}

}
