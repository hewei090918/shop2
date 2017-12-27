package com.web.shop.domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CommodityExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CommodityExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andCommodityIdIsNull() {
            addCriterion("commodity_id is null");
            return (Criteria) this;
        }

        public Criteria andCommodityIdIsNotNull() {
            addCriterion("commodity_id is not null");
            return (Criteria) this;
        }

        public Criteria andCommodityIdEqualTo(Integer value) {
            addCriterion("commodity_id =", value, "commodityId");
            return (Criteria) this;
        }

        public Criteria andCommodityIdNotEqualTo(Integer value) {
            addCriterion("commodity_id <>", value, "commodityId");
            return (Criteria) this;
        }

        public Criteria andCommodityIdGreaterThan(Integer value) {
            addCriterion("commodity_id >", value, "commodityId");
            return (Criteria) this;
        }

        public Criteria andCommodityIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("commodity_id >=", value, "commodityId");
            return (Criteria) this;
        }

        public Criteria andCommodityIdLessThan(Integer value) {
            addCriterion("commodity_id <", value, "commodityId");
            return (Criteria) this;
        }

        public Criteria andCommodityIdLessThanOrEqualTo(Integer value) {
            addCriterion("commodity_id <=", value, "commodityId");
            return (Criteria) this;
        }

        public Criteria andCommodityIdIn(List<Integer> values) {
            addCriterion("commodity_id in", values, "commodityId");
            return (Criteria) this;
        }

        public Criteria andCommodityIdNotIn(List<Integer> values) {
            addCriterion("commodity_id not in", values, "commodityId");
            return (Criteria) this;
        }

        public Criteria andCommodityIdBetween(Integer value1, Integer value2) {
            addCriterion("commodity_id between", value1, value2, "commodityId");
            return (Criteria) this;
        }

        public Criteria andCommodityIdNotBetween(Integer value1, Integer value2) {
            addCriterion("commodity_id not between", value1, value2, "commodityId");
            return (Criteria) this;
        }

        public Criteria andCommodityNameIsNull() {
            addCriterion("commodity_name is null");
            return (Criteria) this;
        }

        public Criteria andCommodityNameIsNotNull() {
            addCriterion("commodity_name is not null");
            return (Criteria) this;
        }

        public Criteria andCommodityNameEqualTo(String value) {
            addCriterion("commodity_name =", value, "commodityName");
            return (Criteria) this;
        }

        public Criteria andCommodityNameNotEqualTo(String value) {
            addCriterion("commodity_name <>", value, "commodityName");
            return (Criteria) this;
        }

        public Criteria andCommodityNameGreaterThan(String value) {
            addCriterion("commodity_name >", value, "commodityName");
            return (Criteria) this;
        }

        public Criteria andCommodityNameGreaterThanOrEqualTo(String value) {
            addCriterion("commodity_name >=", value, "commodityName");
            return (Criteria) this;
        }

        public Criteria andCommodityNameLessThan(String value) {
            addCriterion("commodity_name <", value, "commodityName");
            return (Criteria) this;
        }

        public Criteria andCommodityNameLessThanOrEqualTo(String value) {
            addCriterion("commodity_name <=", value, "commodityName");
            return (Criteria) this;
        }

        public Criteria andCommodityNameLike(String value) {
            addCriterion("commodity_name like", value, "commodityName");
            return (Criteria) this;
        }

        public Criteria andCommodityNameNotLike(String value) {
            addCriterion("commodity_name not like", value, "commodityName");
            return (Criteria) this;
        }

        public Criteria andCommodityNameIn(List<String> values) {
            addCriterion("commodity_name in", values, "commodityName");
            return (Criteria) this;
        }

        public Criteria andCommodityNameNotIn(List<String> values) {
            addCriterion("commodity_name not in", values, "commodityName");
            return (Criteria) this;
        }

        public Criteria andCommodityNameBetween(String value1, String value2) {
            addCriterion("commodity_name between", value1, value2, "commodityName");
            return (Criteria) this;
        }

        public Criteria andCommodityNameNotBetween(String value1, String value2) {
            addCriterion("commodity_name not between", value1, value2, "commodityName");
            return (Criteria) this;
        }

        public Criteria andCommodityCodeIsNull() {
            addCriterion("commodity_code is null");
            return (Criteria) this;
        }

        public Criteria andCommodityCodeIsNotNull() {
            addCriterion("commodity_code is not null");
            return (Criteria) this;
        }

        public Criteria andCommodityCodeEqualTo(String value) {
            addCriterion("commodity_code =", value, "commodityCode");
            return (Criteria) this;
        }

        public Criteria andCommodityCodeNotEqualTo(String value) {
            addCriterion("commodity_code <>", value, "commodityCode");
            return (Criteria) this;
        }

        public Criteria andCommodityCodeGreaterThan(String value) {
            addCriterion("commodity_code >", value, "commodityCode");
            return (Criteria) this;
        }

        public Criteria andCommodityCodeGreaterThanOrEqualTo(String value) {
            addCriterion("commodity_code >=", value, "commodityCode");
            return (Criteria) this;
        }

        public Criteria andCommodityCodeLessThan(String value) {
            addCriterion("commodity_code <", value, "commodityCode");
            return (Criteria) this;
        }

        public Criteria andCommodityCodeLessThanOrEqualTo(String value) {
            addCriterion("commodity_code <=", value, "commodityCode");
            return (Criteria) this;
        }

        public Criteria andCommodityCodeLike(String value) {
            addCriterion("commodity_code like", value, "commodityCode");
            return (Criteria) this;
        }

        public Criteria andCommodityCodeNotLike(String value) {
            addCriterion("commodity_code not like", value, "commodityCode");
            return (Criteria) this;
        }

        public Criteria andCommodityCodeIn(List<String> values) {
            addCriterion("commodity_code in", values, "commodityCode");
            return (Criteria) this;
        }

        public Criteria andCommodityCodeNotIn(List<String> values) {
            addCriterion("commodity_code not in", values, "commodityCode");
            return (Criteria) this;
        }

        public Criteria andCommodityCodeBetween(String value1, String value2) {
            addCriterion("commodity_code between", value1, value2, "commodityCode");
            return (Criteria) this;
        }

        public Criteria andCommodityCodeNotBetween(String value1, String value2) {
            addCriterion("commodity_code not between", value1, value2, "commodityCode");
            return (Criteria) this;
        }

        public Criteria andCommodityTypeIsNull() {
            addCriterion("commodity_type is null");
            return (Criteria) this;
        }

        public Criteria andCommodityTypeIsNotNull() {
            addCriterion("commodity_type is not null");
            return (Criteria) this;
        }

        public Criteria andCommodityTypeEqualTo(Integer value) {
            addCriterion("commodity_type =", value, "commodityType");
            return (Criteria) this;
        }

        public Criteria andCommodityTypeNotEqualTo(Integer value) {
            addCriterion("commodity_type <>", value, "commodityType");
            return (Criteria) this;
        }

        public Criteria andCommodityTypeGreaterThan(Integer value) {
            addCriterion("commodity_type >", value, "commodityType");
            return (Criteria) this;
        }

        public Criteria andCommodityTypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("commodity_type >=", value, "commodityType");
            return (Criteria) this;
        }

        public Criteria andCommodityTypeLessThan(Integer value) {
            addCriterion("commodity_type <", value, "commodityType");
            return (Criteria) this;
        }

        public Criteria andCommodityTypeLessThanOrEqualTo(Integer value) {
            addCriterion("commodity_type <=", value, "commodityType");
            return (Criteria) this;
        }

        public Criteria andCommodityTypeIn(List<Integer> values) {
            addCriterion("commodity_type in", values, "commodityType");
            return (Criteria) this;
        }

        public Criteria andCommodityTypeNotIn(List<Integer> values) {
            addCriterion("commodity_type not in", values, "commodityType");
            return (Criteria) this;
        }

        public Criteria andCommodityTypeBetween(Integer value1, Integer value2) {
            addCriterion("commodity_type between", value1, value2, "commodityType");
            return (Criteria) this;
        }

        public Criteria andCommodityTypeNotBetween(Integer value1, Integer value2) {
            addCriterion("commodity_type not between", value1, value2, "commodityType");
            return (Criteria) this;
        }

        public Criteria andStorageIdIsNull() {
            addCriterion("storage_id is null");
            return (Criteria) this;
        }

        public Criteria andStorageIdIsNotNull() {
            addCriterion("storage_id is not null");
            return (Criteria) this;
        }

        public Criteria andStorageIdEqualTo(Integer value) {
            addCriterion("storage_id =", value, "storageId");
            return (Criteria) this;
        }

        public Criteria andStorageIdNotEqualTo(Integer value) {
            addCriterion("storage_id <>", value, "storageId");
            return (Criteria) this;
        }

        public Criteria andStorageIdGreaterThan(Integer value) {
            addCriterion("storage_id >", value, "storageId");
            return (Criteria) this;
        }

        public Criteria andStorageIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("storage_id >=", value, "storageId");
            return (Criteria) this;
        }

        public Criteria andStorageIdLessThan(Integer value) {
            addCriterion("storage_id <", value, "storageId");
            return (Criteria) this;
        }

        public Criteria andStorageIdLessThanOrEqualTo(Integer value) {
            addCriterion("storage_id <=", value, "storageId");
            return (Criteria) this;
        }

        public Criteria andStorageIdIn(List<Integer> values) {
            addCriterion("storage_id in", values, "storageId");
            return (Criteria) this;
        }

        public Criteria andStorageIdNotIn(List<Integer> values) {
            addCriterion("storage_id not in", values, "storageId");
            return (Criteria) this;
        }

        public Criteria andStorageIdBetween(Integer value1, Integer value2) {
            addCriterion("storage_id between", value1, value2, "storageId");
            return (Criteria) this;
        }

        public Criteria andStorageIdNotBetween(Integer value1, Integer value2) {
            addCriterion("storage_id not between", value1, value2, "storageId");
            return (Criteria) this;
        }

        public Criteria andStatusIsNull() {
            addCriterion("status is null");
            return (Criteria) this;
        }

        public Criteria andStatusIsNotNull() {
            addCriterion("status is not null");
            return (Criteria) this;
        }

        public Criteria andStatusEqualTo(String value) {
            addCriterion("status =", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotEqualTo(String value) {
            addCriterion("status <>", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThan(String value) {
            addCriterion("status >", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThanOrEqualTo(String value) {
            addCriterion("status >=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThan(String value) {
            addCriterion("status <", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThanOrEqualTo(String value) {
            addCriterion("status <=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLike(String value) {
            addCriterion("status like", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotLike(String value) {
            addCriterion("status not like", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusIn(List<String> values) {
            addCriterion("status in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotIn(List<String> values) {
            addCriterion("status not in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusBetween(String value1, String value2) {
            addCriterion("status between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotBetween(String value1, String value2) {
            addCriterion("status not between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andIsHotIsNull() {
            addCriterion("is_hot is null");
            return (Criteria) this;
        }

        public Criteria andIsHotIsNotNull() {
            addCriterion("is_hot is not null");
            return (Criteria) this;
        }

        public Criteria andIsHotEqualTo(Boolean value) {
            addCriterion("is_hot =", value, "isHot");
            return (Criteria) this;
        }

        public Criteria andIsHotNotEqualTo(Boolean value) {
            addCriterion("is_hot <>", value, "isHot");
            return (Criteria) this;
        }

        public Criteria andIsHotGreaterThan(Boolean value) {
            addCriterion("is_hot >", value, "isHot");
            return (Criteria) this;
        }

        public Criteria andIsHotGreaterThanOrEqualTo(Boolean value) {
            addCriterion("is_hot >=", value, "isHot");
            return (Criteria) this;
        }

        public Criteria andIsHotLessThan(Boolean value) {
            addCriterion("is_hot <", value, "isHot");
            return (Criteria) this;
        }

        public Criteria andIsHotLessThanOrEqualTo(Boolean value) {
            addCriterion("is_hot <=", value, "isHot");
            return (Criteria) this;
        }

        public Criteria andIsHotIn(List<Boolean> values) {
            addCriterion("is_hot in", values, "isHot");
            return (Criteria) this;
        }

        public Criteria andIsHotNotIn(List<Boolean> values) {
            addCriterion("is_hot not in", values, "isHot");
            return (Criteria) this;
        }

        public Criteria andIsHotBetween(Boolean value1, Boolean value2) {
            addCriterion("is_hot between", value1, value2, "isHot");
            return (Criteria) this;
        }

        public Criteria andIsHotNotBetween(Boolean value1, Boolean value2) {
            addCriterion("is_hot not between", value1, value2, "isHot");
            return (Criteria) this;
        }

        public Criteria andPriceIsNull() {
            addCriterion("price is null");
            return (Criteria) this;
        }

        public Criteria andPriceIsNotNull() {
            addCriterion("price is not null");
            return (Criteria) this;
        }

        public Criteria andPriceEqualTo(Double value) {
            addCriterion("price =", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotEqualTo(Double value) {
            addCriterion("price <>", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceGreaterThan(Double value) {
            addCriterion("price >", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceGreaterThanOrEqualTo(Double value) {
            addCriterion("price >=", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceLessThan(Double value) {
            addCriterion("price <", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceLessThanOrEqualTo(Double value) {
            addCriterion("price <=", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceIn(List<Double> values) {
            addCriterion("price in", values, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotIn(List<Double> values) {
            addCriterion("price not in", values, "price");
            return (Criteria) this;
        }

        public Criteria andPriceBetween(Double value1, Double value2) {
            addCriterion("price between", value1, value2, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotBetween(Double value1, Double value2) {
            addCriterion("price not between", value1, value2, "price");
            return (Criteria) this;
        }

        public Criteria andDiscountIsNull() {
            addCriterion("discount is null");
            return (Criteria) this;
        }

        public Criteria andDiscountIsNotNull() {
            addCriterion("discount is not null");
            return (Criteria) this;
        }

        public Criteria andDiscountEqualTo(Double value) {
            addCriterion("discount =", value, "discount");
            return (Criteria) this;
        }

        public Criteria andDiscountNotEqualTo(Double value) {
            addCriterion("discount <>", value, "discount");
            return (Criteria) this;
        }

        public Criteria andDiscountGreaterThan(Double value) {
            addCriterion("discount >", value, "discount");
            return (Criteria) this;
        }

        public Criteria andDiscountGreaterThanOrEqualTo(Double value) {
            addCriterion("discount >=", value, "discount");
            return (Criteria) this;
        }

        public Criteria andDiscountLessThan(Double value) {
            addCriterion("discount <", value, "discount");
            return (Criteria) this;
        }

        public Criteria andDiscountLessThanOrEqualTo(Double value) {
            addCriterion("discount <=", value, "discount");
            return (Criteria) this;
        }

        public Criteria andDiscountIn(List<Double> values) {
            addCriterion("discount in", values, "discount");
            return (Criteria) this;
        }

        public Criteria andDiscountNotIn(List<Double> values) {
            addCriterion("discount not in", values, "discount");
            return (Criteria) this;
        }

        public Criteria andDiscountBetween(Double value1, Double value2) {
            addCriterion("discount between", value1, value2, "discount");
            return (Criteria) this;
        }

        public Criteria andDiscountNotBetween(Double value1, Double value2) {
            addCriterion("discount not between", value1, value2, "discount");
            return (Criteria) this;
        }

        public Criteria andDiscountPriceIsNull() {
            addCriterion("discount_price is null");
            return (Criteria) this;
        }

        public Criteria andDiscountPriceIsNotNull() {
            addCriterion("discount_price is not null");
            return (Criteria) this;
        }

        public Criteria andDiscountPriceEqualTo(Double value) {
            addCriterion("discount_price =", value, "discountPrice");
            return (Criteria) this;
        }

        public Criteria andDiscountPriceNotEqualTo(Double value) {
            addCriterion("discount_price <>", value, "discountPrice");
            return (Criteria) this;
        }

        public Criteria andDiscountPriceGreaterThan(Double value) {
            addCriterion("discount_price >", value, "discountPrice");
            return (Criteria) this;
        }

        public Criteria andDiscountPriceGreaterThanOrEqualTo(Double value) {
            addCriterion("discount_price >=", value, "discountPrice");
            return (Criteria) this;
        }

        public Criteria andDiscountPriceLessThan(Double value) {
            addCriterion("discount_price <", value, "discountPrice");
            return (Criteria) this;
        }

        public Criteria andDiscountPriceLessThanOrEqualTo(Double value) {
            addCriterion("discount_price <=", value, "discountPrice");
            return (Criteria) this;
        }

        public Criteria andDiscountPriceIn(List<Double> values) {
            addCriterion("discount_price in", values, "discountPrice");
            return (Criteria) this;
        }

        public Criteria andDiscountPriceNotIn(List<Double> values) {
            addCriterion("discount_price not in", values, "discountPrice");
            return (Criteria) this;
        }

        public Criteria andDiscountPriceBetween(Double value1, Double value2) {
            addCriterion("discount_price between", value1, value2, "discountPrice");
            return (Criteria) this;
        }

        public Criteria andDiscountPriceNotBetween(Double value1, Double value2) {
            addCriterion("discount_price not between", value1, value2, "discountPrice");
            return (Criteria) this;
        }

        public Criteria andManagerIsNull() {
            addCriterion("manager is null");
            return (Criteria) this;
        }

        public Criteria andManagerIsNotNull() {
            addCriterion("manager is not null");
            return (Criteria) this;
        }

        public Criteria andManagerEqualTo(Integer value) {
            addCriterion("manager =", value, "manager");
            return (Criteria) this;
        }

        public Criteria andManagerNotEqualTo(Integer value) {
            addCriterion("manager <>", value, "manager");
            return (Criteria) this;
        }

        public Criteria andManagerGreaterThan(Integer value) {
            addCriterion("manager >", value, "manager");
            return (Criteria) this;
        }

        public Criteria andManagerGreaterThanOrEqualTo(Integer value) {
            addCriterion("manager >=", value, "manager");
            return (Criteria) this;
        }

        public Criteria andManagerLessThan(Integer value) {
            addCriterion("manager <", value, "manager");
            return (Criteria) this;
        }

        public Criteria andManagerLessThanOrEqualTo(Integer value) {
            addCriterion("manager <=", value, "manager");
            return (Criteria) this;
        }

        public Criteria andManagerIn(List<Integer> values) {
            addCriterion("manager in", values, "manager");
            return (Criteria) this;
        }

        public Criteria andManagerNotIn(List<Integer> values) {
            addCriterion("manager not in", values, "manager");
            return (Criteria) this;
        }

        public Criteria andManagerBetween(Integer value1, Integer value2) {
            addCriterion("manager between", value1, value2, "manager");
            return (Criteria) this;
        }

        public Criteria andManagerNotBetween(Integer value1, Integer value2) {
            addCriterion("manager not between", value1, value2, "manager");
            return (Criteria) this;
        }

        public Criteria andUpTimeIsNull() {
            addCriterion("up_time is null");
            return (Criteria) this;
        }

        public Criteria andUpTimeIsNotNull() {
            addCriterion("up_time is not null");
            return (Criteria) this;
        }

        public Criteria andUpTimeEqualTo(Date value) {
            addCriterion("up_time =", value, "upTime");
            return (Criteria) this;
        }

        public Criteria andUpTimeNotEqualTo(Date value) {
            addCriterion("up_time <>", value, "upTime");
            return (Criteria) this;
        }

        public Criteria andUpTimeGreaterThan(Date value) {
            addCriterion("up_time >", value, "upTime");
            return (Criteria) this;
        }

        public Criteria andUpTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("up_time >=", value, "upTime");
            return (Criteria) this;
        }

        public Criteria andUpTimeLessThan(Date value) {
            addCriterion("up_time <", value, "upTime");
            return (Criteria) this;
        }

        public Criteria andUpTimeLessThanOrEqualTo(Date value) {
            addCriterion("up_time <=", value, "upTime");
            return (Criteria) this;
        }

        public Criteria andUpTimeIn(List<Date> values) {
            addCriterion("up_time in", values, "upTime");
            return (Criteria) this;
        }

        public Criteria andUpTimeNotIn(List<Date> values) {
            addCriterion("up_time not in", values, "upTime");
            return (Criteria) this;
        }

        public Criteria andUpTimeBetween(Date value1, Date value2) {
            addCriterion("up_time between", value1, value2, "upTime");
            return (Criteria) this;
        }

        public Criteria andUpTimeNotBetween(Date value1, Date value2) {
            addCriterion("up_time not between", value1, value2, "upTime");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}