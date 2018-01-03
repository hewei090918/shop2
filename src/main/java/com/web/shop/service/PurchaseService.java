package com.web.shop.service;

import java.util.List;

import com.web.shop.bean.query.PurchaseFilter;
import com.web.shop.domain.Purchase;

public interface PurchaseService {

	Purchase findById(int purchaseId);
	
	List<Purchase> findAll();
	
	int count(PurchaseFilter filter);
	
	List<Purchase> find(PurchaseFilter filter);
	
	boolean save(Purchase purchase);
	
}
