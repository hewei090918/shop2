package com.web.shop.domain;

import java.util.Date;

public class Storage {
    private Integer storageId;

    private String storageName;

    private Date firstInTime;

    private Date latestInTime;

    private Long amount;

    private Boolean soldOut;

    public Integer getStorageId() {
        return storageId;
    }

    public void setStorageId(Integer storageId) {
        this.storageId = storageId;
    }

    public String getStorageName() {
        return storageName;
    }

    public void setStorageName(String storageName) {
        this.storageName = storageName == null ? null : storageName.trim();
    }

    public Date getFirstInTime() {
        return firstInTime;
    }

    public void setFirstInTime(Date firstInTime) {
        this.firstInTime = firstInTime;
    }

    public Date getLatestInTime() {
        return latestInTime;
    }

    public void setLatestInTime(Date latestInTime) {
        this.latestInTime = latestInTime;
    }

    public Long getAmount() {
        return amount;
    }

    public void setAmount(Long amount) {
        this.amount = amount;
    }

    public Boolean getSoldOut() {
        return soldOut;
    }

    public void setSoldOut(Boolean soldOut) {
        this.soldOut = soldOut;
    }
}