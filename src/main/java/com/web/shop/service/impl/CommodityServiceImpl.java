package com.web.shop.service.impl;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.shop.bean.query.CommodityFilter;
import com.web.shop.domain.Commodity;
import com.web.shop.domain.CommodityExample;
import com.web.shop.domain.CommodityExample.Criteria;
import com.web.shop.domain.Purchase;
import com.web.shop.domain.Storage;
import com.web.shop.mapper.CommodityMapper;
import com.web.shop.mapper.CommodityTypeMapper;
import com.web.shop.mapper.PurchaseMapper;
import com.web.shop.mapper.StorageMapper;
import com.web.shop.mapper.SupplierMapper;
import com.web.shop.mapper.UserMapper;
import com.web.shop.service.CommodityService;

@Service("commodityService")
public class CommodityServiceImpl implements CommodityService {
	
	private Logger logger = Logger.getLogger(this.getClass());
	
	@Autowired
	private CommodityMapper commodityMapper;
	
	@Autowired
	private CommodityTypeMapper commodityTypeMapper;
	
	@Autowired
	private PurchaseMapper purchaseMapper;
	
	@Autowired
	private SupplierMapper supplierMapper;
	
	@Autowired
	private StorageMapper storageMapper;
	
	@Autowired
	private UserMapper userMapper;

	@Override
	public Commodity findById(int commodityId) {
		return commodityMapper.selectByPrimaryKey(commodityId);
	}

	@Override
	public List<Commodity> findAll() {
		return commodityMapper.selectByExample(null);
	}

	@Override
	public int count(CommodityFilter filter) {
		CommodityExample example = new CommodityExample();
		Criteria criteria = example.createCriteria();
		/*
		 * 按商品名称查询
		 */
		String commodityName = filter.getCommodityName();
		if(StringUtils.isNotBlank(commodityName)) {
			criteria.andCommodityNameLike("%" + commodityName + "%");
		}
		/*
		 * 按商品类别查询
		 */
		String commodityType = filter.getCommodityType();
		if(StringUtils.isNotBlank(commodityType)) {
			criteria.andCommodityTypeEqualTo(Integer.parseInt(commodityType));
		}
		/*
		 * 按在售状态查询
		 */
		String status = filter.getStatus();
		if(StringUtils.isNotBlank(status)) {
			criteria.andStatusEqualTo(status);
		}
		/*
		 * 按是否热卖查询
		 */
		int isHot = filter.getIsHot();
		if(isHot == 1) {
			criteria.andIsHotEqualTo(true);
		}else if(isHot == 0) {
			criteria.andIsHotEqualTo(false);
		}
		/*
		 * 按货物管理员查询
		 */
		String manager = filter.getManager();
		if(StringUtils.isNotBlank(manager)) {
			criteria.andManagerEqualTo(Integer.parseInt(manager));
		}
		
		return commodityMapper.countByExample(example);
	}

	@Override
	public List<Commodity> find(CommodityFilter filter) {
		CommodityExample example = new CommodityExample();
		Criteria criteria = example.createCriteria();
		/*
		 * 按商品名称查询
		 */
		String commodityName = filter.getCommodityName();
		if(StringUtils.isNotBlank(commodityName)) {
			criteria.andCommodityNameLike("%" + commodityName + "%");
		}
		/*
		 * 按商品类别查询
		 */
		String commodityType = filter.getCommodityType();
		if(StringUtils.isNotBlank(commodityType)) {
			criteria.andCommodityTypeEqualTo(Integer.parseInt(commodityType));
		}
		/*
		 * 按在售状态查询
		 */
		String status = filter.getStatus();
		if(StringUtils.isNotBlank(status)) {
			criteria.andStatusEqualTo(status);
		}
		/*
		 * 按是否热卖查询
		 */
		int isHot = filter.getIsHot();
		if(isHot == 1) {
			criteria.andIsHotEqualTo(true);
		}else if(isHot == 0) {
			criteria.andIsHotEqualTo(false);
		}
		/*
		 * 按货物管理员查询
		 */
		String manager = filter.getManager();
		if(StringUtils.isNotBlank(manager)) {
			criteria.andManagerEqualTo(Integer.parseInt(manager));
		}
		
		example.setDistinct(true);
		//按商品名称排序
//		example.setOrderByClause("status asc");
		example.setOrderByClause("commodity_name desc");
		
		List<Commodity> list = commodityMapper.selectByExample(example);
		if(list != null && list.size() > 0) {
			for(Commodity commodity: list) {
				String commodityTypeName = commodityTypeMapper.selectByPrimaryKey(commodity.getCommodityType()).getTypeName();
				commodity.setCommodityTypeName(commodityTypeName);
				String supplierName = supplierMapper.selectByPrimaryKey(commodity.getSupplierId()).getSupplierName();
				commodity.setSupplierName(supplierName);
				if(commodity.getManager() != null && commodity.getManager() > 0) {
					String managerName = userMapper.selectByPrimaryKey(commodity.getManager()).getRealname();
					commodity.setManagerName(managerName);
				}
				
			}
		}
		return list;
	}

	@Override
	public boolean save(Commodity commodity) {
		try{
			commodityMapper.insert(commodity);
			logger.info("新增商品成功");
			return true;
		}catch(Exception e) {
			logger.error("新增商品失败", e);
			return false;
		}
		
	}

	@Override
	public boolean update(Commodity commodity) {
		try{
			Commodity comm = commodityMapper.selectByPrimaryKey(commodity.getCommodityId());
			comm.setCommodityType(commodity.getCommodityType());
			comm.setPrice(commodity.getPrice());
			comm.setDiscount(commodity.getDiscount());
			comm.setDiscountPrice(commodity.getPrice()*commodity.getDiscount());
			comm.setManager(commodity.getManager());
			comm.setIsHot(commodity.getIsHot());
			commodityMapper.updateByPrimaryKey(comm);
			logger.info("更新商品成功");
			return true;
		}catch(Exception e) {
			logger.error("更新商品失败", e);
			return false;
		}
		
	}

	@Override
	public boolean deleteById(int commodityId) {
		try{
			commodityMapper.deleteByPrimaryKey(commodityId);
			logger.info("删除商品成功");
			return true;
		}catch(Exception e) {
			logger.error("删除商品失败", e);
			return false;
		}
		
	}

	@Override
	public boolean delete(String ids) {
		String[] idstr = ids.split(",");
		try{
			for(String id: idstr) {
				commodityMapper.deleteByPrimaryKey(Integer.parseInt(id));
				logger.info("删除商品成功");
			}
			return true;
		}catch(Exception e) {
			logger.error("删除商品失败", e);
			return false;
		}
		
	}

	@Override
	public boolean sell(String ids) {
		String[] idstr = ids.split(",");
		try{
			for(String id: idstr) {
				Commodity commodity = commodityMapper.selectByPrimaryKey(Integer.parseInt(id));
				commodity.setStatus("2");
				commodity.setSellTime(new Date());
				commodityMapper.updateByPrimaryKey(commodity);
				int storageId = commodity.getStorageId();
				Storage storage = storageMapper.selectByPrimaryKey(storageId);
				long amount = storage.getAmount()-1;
				storage.setAmount(amount);
				if(amount == 0) {
					storage.setSoldOut(true);
				}
				storageMapper.updateByPrimaryKey(storage);
				logger.info("出售商品成功");
			}
			return true;
		}catch(Exception e) {
			logger.error("出售商品失败", e);
			return false;
		}
	}

	@Override
	public boolean down(String ids) {
		String[] idstr = ids.split(",");
		try{
			for(String id: idstr) {
				Commodity commodity = commodityMapper.selectByPrimaryKey(Integer.parseInt(id));
				commodity.setStatus("3");
				commodity.setDownTime(new Date());
				commodityMapper.updateByPrimaryKey(commodity);
				logger.info("下架商品成功");
			}
			return true;
		}catch(Exception e) {
			logger.error("下架商品失败", e);
			return false;
		}
	}

	@Override
	public boolean up(int upId, long upAmount) {
		if(upAmount > 0){
			Purchase purchase = purchaseMapper.selectByPrimaryKey(upId);
			purchase.setPurchaseAmount(purchase.getPurchaseAmount() - upAmount);
			purchaseMapper.updateByPrimaryKey(purchase);
			logger.info("更新采购数量成功");
			Storage storage = storageMapper.selectByPrimaryKey(purchase.getPurStorageId());
			storage.setAmount(storage.getAmount()- upAmount);
			storageMapper.updateByPrimaryKey(storage);
			logger.info("同步库存数量成功");
			try{
				for(int i = 0; i < upAmount; i++) {
					Commodity commodity = new Commodity();
					commodity.setCommodityName(purchase.getPurCommodityName());
					commodity.setCommodityCode(UUID.randomUUID().toString().replace("-", "").substring(0, 8).toUpperCase());
					commodity.setCommodityType(purchase.getPurCommodityType());
					commodity.setStorageId(purchase.getPurStorageId());
					commodity.setSupplierId(purchase.getPurSupplierId());
					commodity.setStatus("1");
					commodity.setIsHot(false);
					commodity.setCostPrice(purchase.getPurchasePrice());
					commodity.setUpTime(new Date());
					commodityMapper.insert(commodity);
					logger.info("新增商品成功");
				}
				return true;
			}catch(Exception e) {
				logger.error("新增商品失败", e);
				return false;
			}
			
		}
		
		return false;
	}
	

}
