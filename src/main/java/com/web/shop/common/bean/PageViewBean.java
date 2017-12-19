package com.web.shop.common.bean;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class PageViewBean<T> implements Serializable{
	
	private static final long serialVersionUID = -8027188401164979458L;

	/**
	 * 数据记录数
	 */
	private long total;
	
	/**
	 * 数据
	 */
	private List<T> data = new ArrayList<T>();

	public long getTotal() {
		return total;
	}

	public void setTotal(long total) {
		this.total = total;
	}

	public List<T> getData() {
		return data;
	}

	public void setData(List<T> data) {
		this.data = data;
	}

	
}
