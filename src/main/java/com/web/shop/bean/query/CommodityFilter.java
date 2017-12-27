package com.web.shop.bean.query;

public class CommodityFilter {

	/**
	 * 商品名称
	 */
	private String commodityName;
	/**
	 * 商品编码
	 */
	private String commodityCode;
	/**
	 * 商品类别
	 */
	private String commodityType;
	/**
	 * 在售状态
	 */
	private String status;
	/**
	 * 是否热卖
	 */
	private int isHot;
	/**
	 * 货物管理员
	 */
	private String manager;
	
	public String getCommodityName() {
		return commodityName;
	}
	public void setCommodityName(String commodityName) {
		this.commodityName = commodityName;
	}
	public String getCommodityCode() {
		return commodityCode;
	}
	public void setCommodityCode(String commodityCode) {
		this.commodityCode = commodityCode;
	}
	public String getCommodityType() {
		return commodityType;
	}
	public void setCommodityType(String commodityType) {
		this.commodityType = commodityType;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getIsHot() {
		return isHot;
	}
	public void setIsHot(int isHot) {
		this.isHot = isHot;
	}
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}
	
	
}
