package com.web.shop.service;

import java.util.List;

import com.web.shop.bean.query.RoleFilter;
import com.web.shop.domain.Role;

public interface RoleService {

	Role findById(int roleId);
	
	List<Role> findAll();
	
	int count(RoleFilter filter);
	
	List<Role> find(RoleFilter filter);
	
	boolean save(Role role);
	
	boolean update(Role role);
	
	boolean deleteById(int roleId);
	
	boolean delete(String ids);
	
}
