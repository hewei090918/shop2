package com.web.shop.service;

import java.util.List;

import com.web.shop.bean.query.CommodityFilter;
import com.web.shop.domain.Commodity;

public interface CommodityService {

	Commodity findById(int commodityId);
	
	List<Commodity> findAll();
	
	int count(CommodityFilter filter);
	
	List<Commodity> find(CommodityFilter filter);
	
	boolean save(Commodity commodity);
	
	boolean update(Commodity commodity);
	
	boolean deleteById(int commodityId);
	
	boolean delete(String ids);
	
	boolean sell(String ids);
	
	boolean down(String ids);
	
	boolean up(int upId, long upAmount);
	
}
