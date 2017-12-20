package com.web.shop.bean.query;

public class RoleFilter {

	/**
	 * 角色名
	 */
	private String roleName;
	
	/**
	 * 是否管理员
	 */
	private int isAdmin;

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public int getIsAdmin() {
		return isAdmin;
	}

	public void setIsAdmin(int isAdmin) {
		this.isAdmin = isAdmin;
	}

	
}
