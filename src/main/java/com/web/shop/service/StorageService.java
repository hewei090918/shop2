package com.web.shop.service;

import java.util.List;

import com.web.shop.bean.query.StorageFilter;
import com.web.shop.domain.Storage;

public interface StorageService {

	Storage findById(int storageId);
	
	List<Storage> findAll();
	
	int count(StorageFilter filter);
	
	List<Storage> find(StorageFilter filter);
	
	boolean save(Storage storage);
	
	boolean update(Storage storage);
	
	boolean deleteById(int storageId);
	
	boolean delete(String ids);
	
}
