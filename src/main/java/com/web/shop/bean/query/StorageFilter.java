package com.web.shop.bean.query;

public class StorageFilter {

	/*
	 * 商品名
	 */
	private String commodityName;
	/*
	 * 商品类别
	 */
	private String commodityType;
	/*
	 * 是否售罄
	 */
	private int soldOut;

	public String getCommodityName() {
		return commodityName;
	}

	public void setCommodityName(String commodityName) {
		this.commodityName = commodityName;
	}

	public String getCommodityType() {
		return commodityType;
	}

	public void setCommodityType(String commodityType) {
		this.commodityType = commodityType;
	}

	public int getSoldOut() {
		return soldOut;
	}

	public void setSoldOut(int soldOut) {
		this.soldOut = soldOut;
	}
	
	
	
}
