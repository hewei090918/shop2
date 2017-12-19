package com.web.shop.bean.query;


public class UserFilter{

	/**
	 * 用户名
	 */
	private String username;
	
	/**
	 * 姓名
	 */
	private String realname;
	
	/**
	 * 部门ID
	 */
	private String deptId;
	
	/**
	 * 角色ID
	 */
	private String roleId;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public String getDeptId() {
		return deptId;
	}

	public void setDeptId(String deptId) {
		this.deptId = deptId;
	}

	public String getRoleId() {
		return roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	
}
