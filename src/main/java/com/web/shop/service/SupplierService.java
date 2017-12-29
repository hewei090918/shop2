package com.web.shop.service;

import java.util.List;

import com.web.shop.bean.query.SupplierFilter;
import com.web.shop.domain.Supplier;

public interface SupplierService {

	Supplier findById(int supplierId);
	
	List<Supplier> findAll();
	
	int count(SupplierFilter filter);
	
	List<Supplier> find(SupplierFilter filter);
	
	boolean save(Supplier supplier);
	
	boolean update(Supplier supplier);
	
	boolean deleteById(int supplierId);
	
	boolean delete(String ids);
	
}
