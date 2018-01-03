package com.web.shop.bean.query;

public class PurchaseFilter {

	/**
	 * 采购商品名称
	 */
	private String purCommodityName;
	
	/**
	 * 仓库
	 */
	private String purStorageId;
	
	/**
	 * 供应商
	 */
	private String purSupplierId;

	public String getPurCommodityName() {
		return purCommodityName;
	}

	public void setPurCommodityName(String purCommodityName) {
		this.purCommodityName = purCommodityName;
	}

	public String getPurStorageId() {
		return purStorageId;
	}

	public void setPurStorageId(String purStorageId) {
		this.purStorageId = purStorageId;
	}

	public String getPurSupplierId() {
		return purSupplierId;
	}

	public void setPurSupplierId(String purSupplierId) {
		this.purSupplierId = purSupplierId;
	}

	
}
