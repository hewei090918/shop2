package com.web.shop.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.shop.domain.User;
import com.web.shop.mapper.UserMapper;
import com.web.shop.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;

	@Override
	public User findById(int userId) {
		return userMapper.selectByPrimaryKey(userId);
	}
	
	
}
