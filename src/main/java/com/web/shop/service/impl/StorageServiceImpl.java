package com.web.shop.service.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.shop.bean.query.StorageFilter;
import com.web.shop.domain.Storage;
import com.web.shop.domain.StorageExample;
import com.web.shop.domain.StorageExample.Criteria;
import com.web.shop.mapper.CommodityTypeMapper;
import com.web.shop.mapper.StorageMapper;
import com.web.shop.service.StorageService;

@Service("storageService")
public class StorageServiceImpl implements StorageService {
	
	private Logger logger = Logger.getLogger(this.getClass());
	
	@Autowired
	private StorageMapper storageMapper;
	
	@Autowired
	private CommodityTypeMapper commodityTypeMapper;

	@Override
	public Storage findById(int storageId) {
		return storageMapper.selectByPrimaryKey(storageId);
	}

	@Override
	public List<Storage> findAll() {
		return storageMapper.selectByExample(null);
	}

	@Override
	public int count(StorageFilter filter) {
		StorageExample example = new StorageExample();
		Criteria criteria = example.createCriteria();
		
		/*
		 * 按仓库名称查询
		 */
		String storageName = filter.getStorageName();
		if(StringUtils.isNotBlank(storageName)) {
			criteria.andStorageNameLike("%" + storageName + "%");
		}
		
		int soldOut = filter.getSoldOut();
		if(soldOut == 1) {
			criteria.andSoldOutEqualTo(true);
		}else if(soldOut == 0) {
			criteria.andSoldOutEqualTo(false);
		}
		return storageMapper.countByExample(example);
	}

	@Override
	public List<Storage> find(StorageFilter filter) {
		StorageExample example = new StorageExample();
		Criteria criteria = example.createCriteria();
		
		/*
		 * 按仓库名称查询
		 */
		String storageName = filter.getStorageName();
		if(StringUtils.isNotBlank(storageName)) {
			criteria.andStorageNameLike("%" + storageName + "%");
		}
		
		int soldOut = filter.getSoldOut();
		if(soldOut == 1) {
			criteria.andSoldOutEqualTo(true);
		}else if(soldOut == 0) {
			criteria.andSoldOutEqualTo(false);
		}
		List<Storage> list = storageMapper.selectByExample(example);
		return list;
	}

	@Override
	public boolean save(Storage storage) {
		try{
			storage.setAmount(0L);
			storage.setSoldOut(true);
			storageMapper.insert(storage);
			logger.info("新增仓库成功");
			return true;
		}catch(Exception e) {
			logger.error("新增仓库失败", e);
			return false;
		}
	}

	@Override
	public boolean update(Storage storage) {
		try{
			storageMapper.updateByPrimaryKey(storage);
			logger.info("更新仓库成功");
			return true;
		}catch(Exception e) {
			logger.error("更新仓库失败", e);
			return false;
		}
	}

	@Override
	public boolean deleteById(int storageId) {
		try{
			storageMapper.deleteByPrimaryKey(storageId);
			logger.info("删除仓库成功");
			return true;
		}catch(Exception e) {
			logger.error("删除仓库失败", e);
			return false;
		}
	}

	@Override
	public boolean delete(String ids) {
		String[] idstr = ids.split(",");
		try{
			for(String id: idstr) {
				storageMapper.deleteByPrimaryKey(Integer.parseInt(id));
			}
			logger.info("删除仓库成功");
			return true;
		}catch(Exception e) {
			logger.error("删除仓库失败", e);
			return false;
		}
	}

}
