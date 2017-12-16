package com.web.shop.service;

import java.util.List;

import com.web.shop.bean.query.UserFilter;
import com.web.shop.domain.User;

public interface UserService {

	User findById(int userId);
	
	List<User> findAll();
	
	int count(UserFilter filter);
	
	List<User> find(UserFilter filter);
	
}
