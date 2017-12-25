package com.web.shop.domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class StorageExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public StorageExample() {
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

        public Criteria andAmountIsNull() {
            addCriterion("amount is null");
            return (Criteria) this;
        }

        public Criteria andAmountIsNotNull() {
            addCriterion("amount is not null");
            return (Criteria) this;
        }

        public Criteria andAmountEqualTo(Long value) {
            addCriterion("amount =", value, "amount");
            return (Criteria) this;
        }

        public Criteria andAmountNotEqualTo(Long value) {
            addCriterion("amount <>", value, "amount");
            return (Criteria) this;
        }

        public Criteria andAmountGreaterThan(Long value) {
            addCriterion("amount >", value, "amount");
            return (Criteria) this;
        }

        public Criteria andAmountGreaterThanOrEqualTo(Long value) {
            addCriterion("amount >=", value, "amount");
            return (Criteria) this;
        }

        public Criteria andAmountLessThan(Long value) {
            addCriterion("amount <", value, "amount");
            return (Criteria) this;
        }

        public Criteria andAmountLessThanOrEqualTo(Long value) {
            addCriterion("amount <=", value, "amount");
            return (Criteria) this;
        }

        public Criteria andAmountIn(List<Long> values) {
            addCriterion("amount in", values, "amount");
            return (Criteria) this;
        }

        public Criteria andAmountNotIn(List<Long> values) {
            addCriterion("amount not in", values, "amount");
            return (Criteria) this;
        }

        public Criteria andAmountBetween(Long value1, Long value2) {
            addCriterion("amount between", value1, value2, "amount");
            return (Criteria) this;
        }

        public Criteria andAmountNotBetween(Long value1, Long value2) {
            addCriterion("amount not between", value1, value2, "amount");
            return (Criteria) this;
        }

        public Criteria andFirstInTimeIsNull() {
            addCriterion("first_in_time is null");
            return (Criteria) this;
        }

        public Criteria andFirstInTimeIsNotNull() {
            addCriterion("first_in_time is not null");
            return (Criteria) this;
        }

        public Criteria andFirstInTimeEqualTo(Date value) {
            addCriterion("first_in_time =", value, "firstInTime");
            return (Criteria) this;
        }

        public Criteria andFirstInTimeNotEqualTo(Date value) {
            addCriterion("first_in_time <>", value, "firstInTime");
            return (Criteria) this;
        }

        public Criteria andFirstInTimeGreaterThan(Date value) {
            addCriterion("first_in_time >", value, "firstInTime");
            return (Criteria) this;
        }

        public Criteria andFirstInTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("first_in_time >=", value, "firstInTime");
            return (Criteria) this;
        }

        public Criteria andFirstInTimeLessThan(Date value) {
            addCriterion("first_in_time <", value, "firstInTime");
            return (Criteria) this;
        }

        public Criteria andFirstInTimeLessThanOrEqualTo(Date value) {
            addCriterion("first_in_time <=", value, "firstInTime");
            return (Criteria) this;
        }

        public Criteria andFirstInTimeIn(List<Date> values) {
            addCriterion("first_in_time in", values, "firstInTime");
            return (Criteria) this;
        }

        public Criteria andFirstInTimeNotIn(List<Date> values) {
            addCriterion("first_in_time not in", values, "firstInTime");
            return (Criteria) this;
        }

        public Criteria andFirstInTimeBetween(Date value1, Date value2) {
            addCriterion("first_in_time between", value1, value2, "firstInTime");
            return (Criteria) this;
        }

        public Criteria andFirstInTimeNotBetween(Date value1, Date value2) {
            addCriterion("first_in_time not between", value1, value2, "firstInTime");
            return (Criteria) this;
        }

        public Criteria andLatestInTimeIsNull() {
            addCriterion("latest_in_time is null");
            return (Criteria) this;
        }

        public Criteria andLatestInTimeIsNotNull() {
            addCriterion("latest_in_time is not null");
            return (Criteria) this;
        }

        public Criteria andLatestInTimeEqualTo(Date value) {
            addCriterion("latest_in_time =", value, "latestInTime");
            return (Criteria) this;
        }

        public Criteria andLatestInTimeNotEqualTo(Date value) {
            addCriterion("latest_in_time <>", value, "latestInTime");
            return (Criteria) this;
        }

        public Criteria andLatestInTimeGreaterThan(Date value) {
            addCriterion("latest_in_time >", value, "latestInTime");
            return (Criteria) this;
        }

        public Criteria andLatestInTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("latest_in_time >=", value, "latestInTime");
            return (Criteria) this;
        }

        public Criteria andLatestInTimeLessThan(Date value) {
            addCriterion("latest_in_time <", value, "latestInTime");
            return (Criteria) this;
        }

        public Criteria andLatestInTimeLessThanOrEqualTo(Date value) {
            addCriterion("latest_in_time <=", value, "latestInTime");
            return (Criteria) this;
        }

        public Criteria andLatestInTimeIn(List<Date> values) {
            addCriterion("latest_in_time in", values, "latestInTime");
            return (Criteria) this;
        }

        public Criteria andLatestInTimeNotIn(List<Date> values) {
            addCriterion("latest_in_time not in", values, "latestInTime");
            return (Criteria) this;
        }

        public Criteria andLatestInTimeBetween(Date value1, Date value2) {
            addCriterion("latest_in_time between", value1, value2, "latestInTime");
            return (Criteria) this;
        }

        public Criteria andLatestInTimeNotBetween(Date value1, Date value2) {
            addCriterion("latest_in_time not between", value1, value2, "latestInTime");
            return (Criteria) this;
        }

        public Criteria andSoldOutIsNull() {
            addCriterion("sold_out is null");
            return (Criteria) this;
        }

        public Criteria andSoldOutIsNotNull() {
            addCriterion("sold_out is not null");
            return (Criteria) this;
        }

        public Criteria andSoldOutEqualTo(Boolean value) {
            addCriterion("sold_out =", value, "soldOut");
            return (Criteria) this;
        }

        public Criteria andSoldOutNotEqualTo(Boolean value) {
            addCriterion("sold_out <>", value, "soldOut");
            return (Criteria) this;
        }

        public Criteria andSoldOutGreaterThan(Boolean value) {
            addCriterion("sold_out >", value, "soldOut");
            return (Criteria) this;
        }

        public Criteria andSoldOutGreaterThanOrEqualTo(Boolean value) {
            addCriterion("sold_out >=", value, "soldOut");
            return (Criteria) this;
        }

        public Criteria andSoldOutLessThan(Boolean value) {
            addCriterion("sold_out <", value, "soldOut");
            return (Criteria) this;
        }

        public Criteria andSoldOutLessThanOrEqualTo(Boolean value) {
            addCriterion("sold_out <=", value, "soldOut");
            return (Criteria) this;
        }

        public Criteria andSoldOutIn(List<Boolean> values) {
            addCriterion("sold_out in", values, "soldOut");
            return (Criteria) this;
        }

        public Criteria andSoldOutNotIn(List<Boolean> values) {
            addCriterion("sold_out not in", values, "soldOut");
            return (Criteria) this;
        }

        public Criteria andSoldOutBetween(Boolean value1, Boolean value2) {
            addCriterion("sold_out between", value1, value2, "soldOut");
            return (Criteria) this;
        }

        public Criteria andSoldOutNotBetween(Boolean value1, Boolean value2) {
            addCriterion("sold_out not between", value1, value2, "soldOut");
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