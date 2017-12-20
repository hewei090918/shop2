package com.web.shop.service.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.shop.bean.query.RoleFilter;
import com.web.shop.domain.Role;
import com.web.shop.domain.RoleExample;
import com.web.shop.domain.RoleExample.Criteria;
import com.web.shop.mapper.RoleMapper;
import com.web.shop.service.RoleService;

@Service("roleService")
public class RoleServiceImpl implements RoleService {
	
	private Logger logger = Logger.getLogger(this.getClass());

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

	@Override
	public int count(RoleFilter filter) {
		RoleExample example = new RoleExample();
		Criteria criteria = example.createCriteria();
		
		String roleName = filter.getRoleName();
		if(StringUtils.isNotBlank(roleName)) {
			criteria.andRoleNameLike("%" + roleName + "%");
		}
		
		int isAdmin = filter.getIsAdmin();
		if(isAdmin == 1) {
			criteria.andIsAdminEqualTo(true);
		}else if(isAdmin == 0) {
			criteria.andIsAdminEqualTo(false);
		}
		
		return roleMapper.countByExample(example);
	}

	@Override
	public List<Role> find(RoleFilter filter) {
		RoleExample example = new RoleExample();
		Criteria criteria = example.createCriteria();
		
		String roleName = filter.getRoleName();
		if(StringUtils.isNotBlank(roleName)) {
			criteria.andRoleNameLike("%" + roleName + "%");
		}
		
		int isAdmin = filter.getIsAdmin();
		if(isAdmin == 1) {
			criteria.andIsAdminEqualTo(true);
		}else if(isAdmin == 0) {
			criteria.andIsAdminEqualTo(false);
		}
		
		List<Role> list = roleMapper.selectByExample(example);
		return list;
	}

	@Override
	public boolean save(Role role) {
		try{
			roleMapper.insert(role);
			logger.info("新增角色成功");
			return true;
		}catch(Exception e) {
			logger.error("新增角色失败", e);
			return false;
		}
		
	}

	@Override
	public boolean update(Role role) {
		try{
			roleMapper.updateByPrimaryKey(role);
			logger.info("更新角色成功");
			return true;
		}catch(Exception e){
			logger.error("更新角色失败", e);
			return false;
		}
	}

	@Override
	public boolean deleteById(int roleId) {
		try{
			roleMapper.deleteByPrimaryKey(roleId);
			logger.info("删除角色成功");
			return true;
		}catch(Exception e) {
			logger.error("删除角色失败", e);
			return false;
		}
	}

	@Override
	public boolean delete(String ids) {
		String[] idstr = ids.split(",");
		try{
			for(String id: idstr) {
				roleMapper.deleteByPrimaryKey(Integer.parseInt(id));
			}
			logger.info("删除角色成功");
			return true;
		}catch(Exception e) {
			logger.error("删除角色失败", e);
			return false;
		}
	}

}
