package com.web.shop.service.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.shop.bean.query.PurchaseFilter;
import com.web.shop.domain.Purchase;
import com.web.shop.domain.PurchaseExample;
import com.web.shop.domain.PurchaseExample.Criteria;
import com.web.shop.domain.Storage;
import com.web.shop.mapper.CommodityTypeMapper;
import com.web.shop.mapper.PurchaseMapper;
import com.web.shop.mapper.StorageMapper;
import com.web.shop.mapper.SupplierMapper;
import com.web.shop.service.PurchaseService;

@Service("purchaseService")
public class PurchaseServiceImpl implements PurchaseService {
	
	private Logger logger = Logger.getLogger(this.getClass());
	
	@Autowired
	private PurchaseMapper purchaseMapper;
	
	@Autowired
	private CommodityTypeMapper commodityTypeMapper;
	
	@Autowired
	private StorageMapper storageMapper;
	
	@Autowired
	private SupplierMapper supplierMapper;

	@Override
	public Purchase findById(int purchaseId) {
		return purchaseMapper.selectByPrimaryKey(purchaseId);
	}

	@Override
	public List<Purchase> findAll() {
		return purchaseMapper.selectByExample(null);
	}

	@Override
	public int count(PurchaseFilter filter) {
		PurchaseExample example = new PurchaseExample();
		Criteria criteria = example.createCriteria();
		
		/*
		 * 按采购商品名称查询
		 */
		String purCommodityName = filter.getPurCommodityName();
		if(StringUtils.isNotBlank(purCommodityName)) {
			criteria.andPurCommodityNameLike("%" + purCommodityName + "%");
		}
		
		/*
		 * 按仓库查询
		 */
		String purStorageId = filter.getPurStorageId();
		if(StringUtils.isNotBlank(purStorageId)) {
			criteria.andPurStorageIdEqualTo(Integer.parseInt(purStorageId));
		}
		
		/*
		 * 按供应商查询
		 */
		String purSupplierId = filter.getPurSupplierId();
		if(StringUtils.isNotBlank(purSupplierId)) {
			criteria.andPurSupplierIdEqualTo(Integer.parseInt(purSupplierId));
		}
		
		return purchaseMapper.countByExample(example);
	}

	@Override
	public List<Purchase> find(PurchaseFilter filter) {
		PurchaseExample example = new PurchaseExample();
		Criteria criteria = example.createCriteria();
		
		/*
		 * 按采购商品名称查询
		 */
		String purCommodityName = filter.getPurCommodityName();
		if(StringUtils.isNotBlank(purCommodityName)) {
			criteria.andPurCommodityNameLike("%" + purCommodityName + "%");
		}
		
		/*
		 * 按仓库查询
		 */
		String purStorageId = filter.getPurStorageId();
		if(StringUtils.isNotBlank(purStorageId)) {
			criteria.andPurStorageIdEqualTo(Integer.parseInt(purStorageId));
		}
		
		/*
		 * 按供应商查询
		 */
		String purSupplierId = filter.getPurSupplierId();
		if(StringUtils.isNotBlank(purSupplierId)) {
			criteria.andPurSupplierIdEqualTo(Integer.parseInt(purSupplierId));
		}
		
		List<Purchase> list = purchaseMapper.selectByExample(example);
		if(null != list && list.size() > 0) {
			for(Purchase purchase: list) {
				String purCommodityTypeName = commodityTypeMapper.selectByPrimaryKey(purchase.getPurCommodityType()).getTypeName();
				purchase.setPurCommodityTypeName(purCommodityTypeName);
				String purStorageName = storageMapper.selectByPrimaryKey(purchase.getPurStorageId()).getStorageName();
				purchase.setPurStorageName(purStorageName);
				String purSupplierName = supplierMapper.selectByPrimaryKey(purchase.getPurSupplierId()).getSupplierName();
				purchase.setPurSupplierName(purSupplierName);
			}
		}
		return list;
	}
	
	@Override
	public int countByStorageId(int storageId) {
		PurchaseExample example = new PurchaseExample();
		Criteria criteria = example.createCriteria();
		criteria.andPurStorageIdEqualTo(storageId);
		return purchaseMapper.countByExample(example);
	}

	@Override
	public List<Purchase> getListByStorageId(int storageId) {
		PurchaseExample example = new PurchaseExample();
		Criteria criteria = example.createCriteria();
		criteria.andPurStorageIdEqualTo(storageId);
		List<Purchase> list = purchaseMapper.selectByExample(example);
		if(null != list && list.size() > 0) {
			for(Purchase purchase: list) {
				String purCommodityTypeName = commodityTypeMapper.selectByPrimaryKey(purchase.getPurCommodityType()).getTypeName();
				purchase.setPurCommodityTypeName(purCommodityTypeName);
				String purStorageName = storageMapper.selectByPrimaryKey(purchase.getPurStorageId()).getStorageName();
				purchase.setPurStorageName(purStorageName);
				String purSupplierName = supplierMapper.selectByPrimaryKey(purchase.getPurSupplierId()).getSupplierName();
				purchase.setPurSupplierName(purSupplierName);
			}
		}
		return list;
	}

	@Override
	public boolean save(Purchase purchase) {
		try{
			int storageId = purchase.getPurStorageId();
			Storage storage = storageMapper.selectByPrimaryKey(storageId);
			if(storage.getAmount() == 0L) {
				storage.setFirstInTime(new Date());
			}
			if(purchase.getPurchaseAmount() > 0L) {
				storage.setSoldOut(false);
				storage.setLatestInTime(new Date());
			}
			long amount = storage.getAmount() + purchase.getPurchaseAmount();
			storage.setAmount(amount);
			storageMapper.updateByPrimaryKey(storage);
			logger.info("更新仓库商品数量成功");
			purchaseMapper.insert(purchase);
			logger.info("采购商品成功");
			return true;
		}catch(Exception e) {
			logger.error("采购商品失败", e);
			return false;
		}
	}


}
