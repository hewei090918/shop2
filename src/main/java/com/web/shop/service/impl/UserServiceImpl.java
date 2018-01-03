package com.web.shop.service.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
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
	
	private Logger logger = Logger.getLogger(this.getClass());

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
	public List<User> findEnableList() {
		UserExample example = new UserExample();
		example.createCriteria().andLockedEqualTo(false);
		return userMapper.selectByExample(example);
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
		String deptId = filter.getDeptId();
		if(StringUtils.isNotBlank(deptId)) {
			criteria.andDeptIdEqualTo(Integer.parseInt(deptId));
		}
		/*
		 * 按角色查询
		 */
		String roleId = filter.getRoleId();
		if(StringUtils.isNotBlank(roleId)) {
			criteria.andRoleIdEqualTo(Integer.parseInt(roleId));
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
		String deptId = filter.getDeptId();
		if(StringUtils.isNotBlank(deptId)) {
			criteria.andDeptIdEqualTo(Integer.parseInt(deptId));
		}
		/*
		 * 按角色查询
		 */
		String roleId = filter.getRoleId();
		if(StringUtils.isNotBlank(roleId)) {
			criteria.andRoleIdEqualTo(Integer.parseInt(roleId));
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

	@Override
	public boolean save(User user) {
		try{
			userMapper.insert(user);
			logger.info("新增用户成功");
			return true;
		}catch(Exception e) {
			logger.error("新增用户失败", e);
			return false;
		}
		
	}

	@Override
	public boolean update(User user) {
		try{
			userMapper.updateByPrimaryKey(user);
			logger.info("更新用户成功");
			return true;
		}catch(Exception e) {
			logger.error("更新用户失败", e);
			return false;
		}
		
	}

	@Override
	public boolean deleteById(int userId) {
		try{
			userMapper.deleteByPrimaryKey(userId);
			logger.info("删除用户成功");
			return true;
		}catch(Exception e) {
			logger.error("删除用户失败", e);
			return false;
		}
		
	}

	@Override
	public boolean delete(String ids) {
		String[] idstr = ids.split(",");
		try{
			for(String id: idstr) {
				userMapper.deleteByPrimaryKey(Integer.parseInt(id));
				logger.info("删除用户成功");
			}
			return true;
		}catch(Exception e) {
			logger.error("删除用户失败", e);
			return false;
		}
		
	}

	
}
