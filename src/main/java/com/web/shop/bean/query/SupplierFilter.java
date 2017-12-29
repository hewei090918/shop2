package com.web.shop.bean.query;

public class SupplierFilter {

	/**
	 * 供应商名称
	 */
	private String supplierName;
	
	/**
	 * 所在地区
	 */
	private String areaId;

	public String getSupplierName() {
		return supplierName;
	}

	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}

	public String getAreaId() {
		return areaId;
	}

	public void setAreaId(String areaId) {
		this.areaId = areaId;
	}
	
}
