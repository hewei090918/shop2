package com.web.shop.service.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.shop.bean.query.UserFilter;
import com.web.shop.domain.User;
import com.web.shop.domain.UserExample;
import com.web.shop.domain.UserExample.Criteria;
import com.web.shop.mapper.DeptMapper;
import com.web.shop.mapper.ProfessionMapper;
import com.web.shop.mapper.RoleMapper;
import com.web.shop.mapper.UserMapper;
import com.web.shop.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;
	
	@Autowired
	private ProfessionMapper professionMapper;
	
	@Autowired
	private DeptMapper deptMapper;
	
	@Autowired
	private RoleMapper roleMapper;

	@Override
	public User findById(int userId) {
		return userMapper.selectByPrimaryKey(userId);
	}

	@Override
	public List<User> findAll() {
		return userMapper.selectByExample(null);
	}
	
	@Override
	public int count(UserFilter filter) {
		UserExample example = new UserExample();
		Criteria criteria = example.createCriteria();
		/*
		 * 按用户名查询
		 */
		String username = filter.getUsername();
		if(StringUtils.isNotBlank(username)) {
			criteria.andUsernameLike("%" + username + "%");
		}
		/*
		 * 按姓名查询
		 */
		String realname = filter.getRealname();
		if(StringUtils.isNotBlank(realname)) {
			criteria.andRealnameLike("%" + realname + "%");
		}
		/*
		 * 按部门查询
		 */
		int deptId = filter.getDeptId();
		if(deptId > 0) {
			criteria.andDeptIdEqualTo(deptId);
		}
		/*
		 * 按角色查询
		 */
		int roleId = filter.getRoleId();
		if(roleId > 0) {
			criteria.andRoleIdEqualTo(roleId);
		}
		
		return userMapper.countByExample(example);
	}

	@Override
	public List<User> find(UserFilter filter) {
		UserExample example = new UserExample();
		Criteria criteria = example.createCriteria();
		/*
		 * 按用户名查询
		 */
		String username = filter.getUsername();
		if(StringUtils.isNotBlank(username)) {
			criteria.andUsernameLike("%" + username + "%");
		}
		/*
		 * 按姓名查询
		 */
		String realname = filter.getRealname();
		if(StringUtils.isNotBlank(realname)) {
			criteria.andRealnameLike("%" + realname + "%");
		}
		/*
		 * 按部门查询
		 */
		int deptId = filter.getDeptId();
		if(deptId > 0) {
			criteria.andDeptIdEqualTo(deptId);
		}
		/*
		 * 按角色查询
		 */
		int roleId = filter.getRoleId();
		if(roleId > 0) {
			criteria.andRoleIdEqualTo(roleId);
		}
		List<User> list = userMapper.selectByExample(example);
		if(list != null && list.size() > 0) {
			for(User user: list) {
				String professionName = professionMapper.selectByPrimaryKey(user.getProfessionId()).getProfessionName();
				user.setProfessionName(professionName);
				String deptName = deptMapper.selectByPrimaryKey(user.getDeptId()).getDeptName();
				user.setDeptName(deptName);
				String roleName = roleMapper.selectByPrimaryKey(user.getRoleId()).getRoleName();
				user.setRoleName(roleName);
			}
		}
		return list;
	}
	
}
