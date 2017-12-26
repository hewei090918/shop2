package com.web.shop.domain;

import java.util.Date;

public class Commodity {
    private Integer commodityId;

    private String commodityName;

    private String commodityCode;

    private Integer commodityType;

    private Integer storageId;

    private Boolean status;

    private Boolean isHot;

    private Double price;

    private Double discount;

    private Double discountPrice;

    private Integer manager;

    private Date upTime;
    
    //用于页面展示
    private String commodityTypeName;
    
    private String managerName;

    public Integer getCommodityId() {
        return commodityId;
    }

    public void setCommodityId(Integer commodityId) {
        this.commodityId = commodityId;
    }

    public String getCommodityName() {
        return commodityName;
    }

    public void setCommodityName(String commodityName) {
        this.commodityName = commodityName == null ? null : commodityName.trim();
    }

    public String getCommodityCode() {
        return commodityCode;
    }

    public void setCommodityCode(String commodityCode) {
        this.commodityCode = commodityCode == null ? null : commodityCode.trim();
    }

    public Integer getCommodityType() {
        return commodityType;
    }

    public void setCommodityType(Integer commodityType) {
        this.commodityType = commodityType;
    }

    public Integer getStorageId() {
        return storageId;
    }

    public void setStorageId(Integer storageId) {
        this.storageId = storageId;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    public Boolean getIsHot() {
        return isHot;
    }

    public void setIsHot(Boolean isHot) {
        this.isHot = isHot;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Double getDiscount() {
        return discount;
    }

    public void setDiscount(Double discount) {
        this.discount = discount;
    }

    public Double getDiscountPrice() {
        return discountPrice;
    }

    public void setDiscountPrice(Double discountPrice) {
        this.discountPrice = discountPrice;
    }

    public Integer getManager() {
        return manager;
    }

    public void setManager(Integer manager) {
        this.manager = manager;
    }

    public Date getUpTime() {
        return upTime;
    }

    public void setUpTime(Date upTime) {
        this.upTime = upTime;
    }

	public String getCommodityTypeName() {
		return commodityTypeName;
	}

	public void setCommodityTypeName(String commodityTypeName) {
		this.commodityTypeName = commodityTypeName;
	}

	public String getManagerName() {
		return managerName;
	}

	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}
    
}