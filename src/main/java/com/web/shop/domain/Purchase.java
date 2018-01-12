package com.web.shop.domain;

public class Purchase {
    private Integer purchaseId;

    private String purCommodityName;

    private Integer purCommodityType;

    private Integer purStorageId;

    private Integer purSupplierId;

    private Double purchasePrice;

    private Long purchaseAmount;
    
    private String purCommodityTypeName;
    
    private String purStorageName;
    
    private String purSupplierName;
    
    private Long storageAmount;

    public Integer getPurchaseId() {
        return purchaseId;
    }

    public void setPurchaseId(Integer purchaseId) {
        this.purchaseId = purchaseId;
    }

    public String getPurCommodityName() {
        return purCommodityName;
    }

    public void setPurCommodityName(String purCommodityName) {
        this.purCommodityName = purCommodityName == null ? null : purCommodityName.trim();
    }

    public Integer getPurCommodityType() {
        return purCommodityType;
    }

    public void setPurCommodityType(Integer purCommodityType) {
        this.purCommodityType = purCommodityType;
    }

    public Integer getPurStorageId() {
        return purStorageId;
    }

    public void setPurStorageId(Integer purStorageId) {
        this.purStorageId = purStorageId;
    }

    public Integer getPurSupplierId() {
        return purSupplierId;
    }

    public void setPurSupplierId(Integer purSupplierId) {
        this.purSupplierId = purSupplierId;
    }

    public Double getPurchasePrice() {
        return purchasePrice;
    }

    public void setPurchasePrice(Double purchasePrice) {
        this.purchasePrice = purchasePrice;
    }

    public Long getPurchaseAmount() {
        return purchaseAmount;
    }

    public void setPurchaseAmount(Long purchaseAmount) {
        this.purchaseAmount = purchaseAmount;
    }

	public String getPurCommodityTypeName() {
		return purCommodityTypeName;
	}

	public void setPurCommodityTypeName(String purCommodityTypeName) {
		this.purCommodityTypeName = purCommodityTypeName;
	}

	public String getPurStorageName() {
		return purStorageName;
	}

	public void setPurStorageName(String purStorageName) {
		this.purStorageName = purStorageName;
	}

	public String getPurSupplierName() {
		return purSupplierName;
	}

	public void setPurSupplierName(String purSupplierName) {
		this.purSupplierName = purSupplierName;
	}

	public Long getStorageAmount() {
		return storageAmount;
	}

	public void setStorageAmount(Long storageAmount) {
		this.storageAmount = storageAmount;
	}
	
	
}