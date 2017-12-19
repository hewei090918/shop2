package com.web.shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.shop.domain.Role;
import com.web.shop.mapper.RoleMapper;
import com.web.shop.service.RoleService;

@Service("roleService")
public class RoleServiceImpl implements RoleService {

	@Autowired
	private RoleMapper roleMapper;
	
	@Override
	public Role findById(int roleId) {
		return roleMapper.selectByPrimaryKey(roleId);
	}

	@Override
	public List<Role> findAll() {
		return roleMapper.selectByExample(null);
	}

}
