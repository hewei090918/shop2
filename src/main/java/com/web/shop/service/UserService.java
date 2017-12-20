package com.web.shop.service;

import java.util.List;

import com.web.shop.bean.query.UserFilter;
import com.web.shop.domain.User;

public interface UserService {

	User findById(int userId);
	
	List<User> findAll();
	
	int count(UserFilter filter);
	
	List<User> find(UserFilter filter);
	
	boolean save(User user);
	
	boolean update(User user);
	
	boolean deleteById(int userId);
	
	boolean delete(String ids);
	
}
