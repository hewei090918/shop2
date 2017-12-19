package com.web.shop.service;

import java.util.List;

import com.web.shop.domain.Role;

public interface RoleService {

	Role findById(int roleId);
	
	List<Role> findAll();
	
}
