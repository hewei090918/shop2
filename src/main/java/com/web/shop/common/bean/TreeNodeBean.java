package com.web.shop.common.bean;

import java.util.List;

public class TreeNodeBean {

	/**
	 * id：节点ID
	 */
	private String id;
	
	/**
	 * text:节点文字信息
	 */
	private String text;
	
	/**
	 * nodes:子节点
	 */
	private List<TreeNodeBean> nodes;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public List<TreeNodeBean> getNodes() {
		return nodes;
	}

	public void setNodes(List<TreeNodeBean> nodes) {
		this.nodes = nodes;
	}
	
	
	
}
