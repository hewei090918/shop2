package com.web.shop.common.properties;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

/**
 * 
 * 包名：com.web.shop.common.properties <br/>
 * 类名：PropertiesItems.java <br/>
 * 版本：version 1.0 <br/>
 * 作者：HeWei <br/>
 * 描述：配置文件统一加载
 */
@Component
public class PropertiesItems {
	/**
	 * 上传图片存储路径
	 */
	@Value("${config.uploadImageDir}")
	private String uploadImageDir;

	/**
	 * 个人头像存储位置
	 */
	@Value("${config.personImageDir}")
	private String personImageDir;

	/**
	 * 最大上传文件大小
	 */
	@Value("${config.maxUploadSize}")
	private String maxUploadSize;
	
	public String getUploadImageDir() {
		return uploadImageDir;
	}

	public void setUploadImageDir(String uploadImageDir) {
		this.uploadImageDir = uploadImageDir;
	}

	public String getPersonImageDir() {
		return personImageDir;
	}

	public void setPersonImageDir(String personImageDir) {
		this.personImageDir = personImageDir;
	}

	public String getMaxUploadSize() {
		return maxUploadSize;
	}

	public void setMaxUploadSize(String maxUploadSize) {
		this.maxUploadSize = maxUploadSize;
	}

}
