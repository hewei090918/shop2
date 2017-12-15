package com.web.shop.domain;

public class Profession {
    private Integer professionId;

    private String professionName;

    public Integer getProfessionId() {
        return professionId;
    }

    public void setProfessionId(Integer professionId) {
        this.professionId = professionId;
    }

    public String getProfessionName() {
        return professionName;
    }

    public void setProfessionName(String professionName) {
        this.professionName = professionName == null ? null : professionName.trim();
    }
}