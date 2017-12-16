package com.web.shop.common.bean;

public class PageBean {
	/**
	 * 总页数
	 */
	private long total;

	/**
	 * 起始页
	 */
	private int start;

	/**
	 * 当前页
	 */
	private int page;

	/**
	 * 每页显示数量
	 */
	private int limit;

	/**
	 * 当前显示起始数
	 */
	private int offset;

	public long getTotal() {
		return total;
	}

	public void setTotal(long total) {
		this.total = total;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}

	public int getOffset() {
		return offset;
	}

	public void setOffset(int offset) {
		this.offset = offset;
	}
	
}
