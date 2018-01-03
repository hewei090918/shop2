package com.web.shop.domain;

import java.util.ArrayList;
import java.util.List;

public class PurchaseExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public PurchaseExample() {
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

        public Criteria andPurchaseIdIsNull() {
            addCriterion("purchase_id is null");
            return (Criteria) this;
        }

        public Criteria andPurchaseIdIsNotNull() {
            addCriterion("purchase_id is not null");
            return (Criteria) this;
        }

        public Criteria andPurchaseIdEqualTo(Integer value) {
            addCriterion("purchase_id =", value, "purchaseId");
            return (Criteria) this;
        }

        public Criteria andPurchaseIdNotEqualTo(Integer value) {
            addCriterion("purchase_id <>", value, "purchaseId");
            return (Criteria) this;
        }

        public Criteria andPurchaseIdGreaterThan(Integer value) {
            addCriterion("purchase_id >", value, "purchaseId");
            return (Criteria) this;
        }

        public Criteria andPurchaseIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("purchase_id >=", value, "purchaseId");
            return (Criteria) this;
        }

        public Criteria andPurchaseIdLessThan(Integer value) {
            addCriterion("purchase_id <", value, "purchaseId");
            return (Criteria) this;
        }

        public Criteria andPurchaseIdLessThanOrEqualTo(Integer value) {
            addCriterion("purchase_id <=", value, "purchaseId");
            return (Criteria) this;
        }

        public Criteria andPurchaseIdIn(List<Integer> values) {
            addCriterion("purchase_id in", values, "purchaseId");
            return (Criteria) this;
        }

        public Criteria andPurchaseIdNotIn(List<Integer> values) {
            addCriterion("purchase_id not in", values, "purchaseId");
            return (Criteria) this;
        }

        public Criteria andPurchaseIdBetween(Integer value1, Integer value2) {
            addCriterion("purchase_id between", value1, value2, "purchaseId");
            return (Criteria) this;
        }

        public Criteria andPurchaseIdNotBetween(Integer value1, Integer value2) {
            addCriterion("purchase_id not between", value1, value2, "purchaseId");
            return (Criteria) this;
        }

        public Criteria andPurCommodityNameIsNull() {
            addCriterion("pur_commodity_name is null");
            return (Criteria) this;
        }

        public Criteria andPurCommodityNameIsNotNull() {
            addCriterion("pur_commodity_name is not null");
            return (Criteria) this;
        }

        public Criteria andPurCommodityNameEqualTo(String value) {
            addCriterion("pur_commodity_name =", value, "purCommodityName");
            return (Criteria) this;
        }

        public Criteria andPurCommodityNameNotEqualTo(String value) {
            addCriterion("pur_commodity_name <>", value, "purCommodityName");
            return (Criteria) this;
        }

        public Criteria andPurCommodityNameGreaterThan(String value) {
            addCriterion("pur_commodity_name >", value, "purCommodityName");
            return (Criteria) this;
        }

        public Criteria andPurCommodityNameGreaterThanOrEqualTo(String value) {
            addCriterion("pur_commodity_name >=", value, "purCommodityName");
            return (Criteria) this;
        }

        public Criteria andPurCommodityNameLessThan(String value) {
            addCriterion("pur_commodity_name <", value, "purCommodityName");
            return (Criteria) this;
        }

        public Criteria andPurCommodityNameLessThanOrEqualTo(String value) {
            addCriterion("pur_commodity_name <=", value, "purCommodityName");
            return (Criteria) this;
        }

        public Criteria andPurCommodityNameLike(String value) {
            addCriterion("pur_commodity_name like", value, "purCommodityName");
            return (Criteria) this;
        }

        public Criteria andPurCommodityNameNotLike(String value) {
            addCriterion("pur_commodity_name not like", value, "purCommodityName");
            return (Criteria) this;
        }

        public Criteria andPurCommodityNameIn(List<String> values) {
            addCriterion("pur_commodity_name in", values, "purCommodityName");
            return (Criteria) this;
        }

        public Criteria andPurCommodityNameNotIn(List<String> values) {
            addCriterion("pur_commodity_name not in", values, "purCommodityName");
            return (Criteria) this;
        }

        public Criteria andPurCommodityNameBetween(String value1, String value2) {
            addCriterion("pur_commodity_name between", value1, value2, "purCommodityName");
            return (Criteria) this;
        }

        public Criteria andPurCommodityNameNotBetween(String value1, String value2) {
            addCriterion("pur_commodity_name not between", value1, value2, "purCommodityName");
            return (Criteria) this;
        }

        public Criteria andPurCommodityTypeIsNull() {
            addCriterion("pur_commodity_type is null");
            return (Criteria) this;
        }

        public Criteria andPurCommodityTypeIsNotNull() {
            addCriterion("pur_commodity_type is not null");
            return (Criteria) this;
        }

        public Criteria andPurCommodityTypeEqualTo(Integer value) {
            addCriterion("pur_commodity_type =", value, "purCommodityType");
            return (Criteria) this;
        }

        public Criteria andPurCommodityTypeNotEqualTo(Integer value) {
            addCriterion("pur_commodity_type <>", value, "purCommodityType");
            return (Criteria) this;
        }

        public Criteria andPurCommodityTypeGreaterThan(Integer value) {
            addCriterion("pur_commodity_type >", value, "purCommodityType");
            return (Criteria) this;
        }

        public Criteria andPurCommodityTypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("pur_commodity_type >=", value, "purCommodityType");
            return (Criteria) this;
        }

        public Criteria andPurCommodityTypeLessThan(Integer value) {
            addCriterion("pur_commodity_type <", value, "purCommodityType");
            return (Criteria) this;
        }

        public Criteria andPurCommodityTypeLessThanOrEqualTo(Integer value) {
            addCriterion("pur_commodity_type <=", value, "purCommodityType");
            return (Criteria) this;
        }

        public Criteria andPurCommodityTypeIn(List<Integer> values) {
            addCriterion("pur_commodity_type in", values, "purCommodityType");
            return (Criteria) this;
        }

        public Criteria andPurCommodityTypeNotIn(List<Integer> values) {
            addCriterion("pur_commodity_type not in", values, "purCommodityType");
            return (Criteria) this;
        }

        public Criteria andPurCommodityTypeBetween(Integer value1, Integer value2) {
            addCriterion("pur_commodity_type between", value1, value2, "purCommodityType");
            return (Criteria) this;
        }

        public Criteria andPurCommodityTypeNotBetween(Integer value1, Integer value2) {
            addCriterion("pur_commodity_type not between", value1, value2, "purCommodityType");
            return (Criteria) this;
        }

        public Criteria andPurStorageIdIsNull() {
            addCriterion("pur_storage_id is null");
            return (Criteria) this;
        }

        public Criteria andPurStorageIdIsNotNull() {
            addCriterion("pur_storage_id is not null");
            return (Criteria) this;
        }

        public Criteria andPurStorageIdEqualTo(Integer value) {
            addCriterion("pur_storage_id =", value, "purStorageId");
            return (Criteria) this;
        }

        public Criteria andPurStorageIdNotEqualTo(Integer value) {
            addCriterion("pur_storage_id <>", value, "purStorageId");
            return (Criteria) this;
        }

        public Criteria andPurStorageIdGreaterThan(Integer value) {
            addCriterion("pur_storage_id >", value, "purStorageId");
            return (Criteria) this;
        }

        public Criteria andPurStorageIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("pur_storage_id >=", value, "purStorageId");
            return (Criteria) this;
        }

        public Criteria andPurStorageIdLessThan(Integer value) {
            addCriterion("pur_storage_id <", value, "purStorageId");
            return (Criteria) this;
        }

        public Criteria andPurStorageIdLessThanOrEqualTo(Integer value) {
            addCriterion("pur_storage_id <=", value, "purStorageId");
            return (Criteria) this;
        }

        public Criteria andPurStorageIdIn(List<Integer> values) {
            addCriterion("pur_storage_id in", values, "purStorageId");
            return (Criteria) this;
        }

        public Criteria andPurStorageIdNotIn(List<Integer> values) {
            addCriterion("pur_storage_id not in", values, "purStorageId");
            return (Criteria) this;
        }

        public Criteria andPurStorageIdBetween(Integer value1, Integer value2) {
            addCriterion("pur_storage_id between", value1, value2, "purStorageId");
            return (Criteria) this;
        }

        public Criteria andPurStorageIdNotBetween(Integer value1, Integer value2) {
            addCriterion("pur_storage_id not between", value1, value2, "purStorageId");
            return (Criteria) this;
        }

        public Criteria andPurSupplierIdIsNull() {
            addCriterion("pur_supplier_id is null");
            return (Criteria) this;
        }

        public Criteria andPurSupplierIdIsNotNull() {
            addCriterion("pur_supplier_id is not null");
            return (Criteria) this;
        }

        public Criteria andPurSupplierIdEqualTo(Integer value) {
            addCriterion("pur_supplier_id =", value, "purSupplierId");
            return (Criteria) this;
        }

        public Criteria andPurSupplierIdNotEqualTo(Integer value) {
            addCriterion("pur_supplier_id <>", value, "purSupplierId");
            return (Criteria) this;
        }

        public Criteria andPurSupplierIdGreaterThan(Integer value) {
            addCriterion("pur_supplier_id >", value, "purSupplierId");
            return (Criteria) this;
        }

        public Criteria andPurSupplierIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("pur_supplier_id >=", value, "purSupplierId");
            return (Criteria) this;
        }

        public Criteria andPurSupplierIdLessThan(Integer value) {
            addCriterion("pur_supplier_id <", value, "purSupplierId");
            return (Criteria) this;
        }

        public Criteria andPurSupplierIdLessThanOrEqualTo(Integer value) {
            addCriterion("pur_supplier_id <=", value, "purSupplierId");
            return (Criteria) this;
        }

        public Criteria andPurSupplierIdIn(List<Integer> values) {
            addCriterion("pur_supplier_id in", values, "purSupplierId");
            return (Criteria) this;
        }

        public Criteria andPurSupplierIdNotIn(List<Integer> values) {
            addCriterion("pur_supplier_id not in", values, "purSupplierId");
            return (Criteria) this;
        }

        public Criteria andPurSupplierIdBetween(Integer value1, Integer value2) {
            addCriterion("pur_supplier_id between", value1, value2, "purSupplierId");
            return (Criteria) this;
        }

        public Criteria andPurSupplierIdNotBetween(Integer value1, Integer value2) {
            addCriterion("pur_supplier_id not between", value1, value2, "purSupplierId");
            return (Criteria) this;
        }

        public Criteria andPurchasePriceIsNull() {
            addCriterion("purchase_price is null");
            return (Criteria) this;
        }

        public Criteria andPurchasePriceIsNotNull() {
            addCriterion("purchase_price is not null");
            return (Criteria) this;
        }

        public Criteria andPurchasePriceEqualTo(Double value) {
            addCriterion("purchase_price =", value, "purchasePrice");
            return (Criteria) this;
        }

        public Criteria andPurchasePriceNotEqualTo(Double value) {
            addCriterion("purchase_price <>", value, "purchasePrice");
            return (Criteria) this;
        }

        public Criteria andPurchasePriceGreaterThan(Double value) {
            addCriterion("purchase_price >", value, "purchasePrice");
            return (Criteria) this;
        }

        public Criteria andPurchasePriceGreaterThanOrEqualTo(Double value) {
            addCriterion("purchase_price >=", value, "purchasePrice");
            return (Criteria) this;
        }

        public Criteria andPurchasePriceLessThan(Double value) {
            addCriterion("purchase_price <", value, "purchasePrice");
            return (Criteria) this;
        }

        public Criteria andPurchasePriceLessThanOrEqualTo(Double value) {
            addCriterion("purchase_price <=", value, "purchasePrice");
            return (Criteria) this;
        }

        public Criteria andPurchasePriceIn(List<Double> values) {
            addCriterion("purchase_price in", values, "purchasePrice");
            return (Criteria) this;
        }

        public Criteria andPurchasePriceNotIn(List<Double> values) {
            addCriterion("purchase_price not in", values, "purchasePrice");
            return (Criteria) this;
        }

        public Criteria andPurchasePriceBetween(Double value1, Double value2) {
            addCriterion("purchase_price between", value1, value2, "purchasePrice");
            return (Criteria) this;
        }

        public Criteria andPurchasePriceNotBetween(Double value1, Double value2) {
            addCriterion("purchase_price not between", value1, value2, "purchasePrice");
            return (Criteria) this;
        }

        public Criteria andPurchaseAmountIsNull() {
            addCriterion("purchase_amount is null");
            return (Criteria) this;
        }

        public Criteria andPurchaseAmountIsNotNull() {
            addCriterion("purchase_amount is not null");
            return (Criteria) this;
        }

        public Criteria andPurchaseAmountEqualTo(Long value) {
            addCriterion("purchase_amount =", value, "purchaseAmount");
            return (Criteria) this;
        }

        public Criteria andPurchaseAmountNotEqualTo(Long value) {
            addCriterion("purchase_amount <>", value, "purchaseAmount");
            return (Criteria) this;
        }

        public Criteria andPurchaseAmountGreaterThan(Long value) {
            addCriterion("purchase_amount >", value, "purchaseAmount");
            return (Criteria) this;
        }

        public Criteria andPurchaseAmountGreaterThanOrEqualTo(Long value) {
            addCriterion("purchase_amount >=", value, "purchaseAmount");
            return (Criteria) this;
        }

        public Criteria andPurchaseAmountLessThan(Long value) {
            addCriterion("purchase_amount <", value, "purchaseAmount");
            return (Criteria) this;
        }

        public Criteria andPurchaseAmountLessThanOrEqualTo(Long value) {
            addCriterion("purchase_amount <=", value, "purchaseAmount");
            return (Criteria) this;
        }

        public Criteria andPurchaseAmountIn(List<Long> values) {
            addCriterion("purchase_amount in", values, "purchaseAmount");
            return (Criteria) this;
        }

        public Criteria andPurchaseAmountNotIn(List<Long> values) {
            addCriterion("purchase_amount not in", values, "purchaseAmount");
            return (Criteria) this;
        }

        public Criteria andPurchaseAmountBetween(Long value1, Long value2) {
            addCriterion("purchase_amount between", value1, value2, "purchaseAmount");
            return (Criteria) this;
        }

        public Criteria andPurchaseAmountNotBetween(Long value1, Long value2) {
            addCriterion("purchase_amount not between", value1, value2, "purchaseAmount");
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