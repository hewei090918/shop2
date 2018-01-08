package com.web.shop.bean.query;

public class StorageFilter {

	/*
	 * 仓库名称
	 */
	private String storageName;
	/*
	 * 是否售罄
	 */
	private int soldOut;

	public String getStorageName() {
		return storageName;
	}

	public void setStorageName(String storageName) {
		this.storageName = storageName;
	}

	public int getSoldOut() {
		return soldOut;
	}

	public void setSoldOut(int soldOut) {
		this.soldOut = soldOut;
	}
	
	
	
}
