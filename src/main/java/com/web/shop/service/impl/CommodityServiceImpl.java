package com.web.shop.service.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.shop.bean.query.CommodityFilter;
import com.web.shop.domain.Commodity;
import com.web.shop.domain.CommodityExample;
import com.web.shop.domain.CommodityExample.Criteria;
import com.web.shop.mapper.CommodityMapper;
import com.web.shop.mapper.CommodityTypeMapper;
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
		 * 按商品编码查询
		 */
		String commodityCode = filter.getCommodityCode();
		if(StringUtils.isNotBlank(commodityCode)) {
			criteria.andCommodityCodeLike("%" + commodityCode + "%");
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
		int status = filter.getStatus();
		if(status == 1) {
			criteria.andStatusEqualTo(true);
		}else if(status == 0) {
			criteria.andStatusEqualTo(false);
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
		 * 按商品编码查询
		 */
		String commodityCode = filter.getCommodityCode();
		if(StringUtils.isNotBlank(commodityCode)) {
			criteria.andCommodityCodeLike("%" + commodityCode + "%");
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
		int status = filter.getStatus();
		if(status == 1) {
			criteria.andStatusEqualTo(true);
		}else if(status == 0) {
			criteria.andStatusEqualTo(false);
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
		
		List<Commodity> list = commodityMapper.selectByExample(example);
		if(list != null && list.size() > 0) {
			for(Commodity commodity: list) {
				String commodityTypeName = commodityTypeMapper.selectByPrimaryKey(commodity.getCommodityType()).getTypeName();
				commodity.setCommodityTypeName(commodityTypeName);
				String managerName = userMapper.selectByPrimaryKey(commodity.getManager()).getRealname();
				commodity.setManagerName(managerName);
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
			commodityMapper.updateByPrimaryKey(commodity);
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
			}
			logger.info("删除商品成功");
			return true;
		}catch(Exception e) {
			logger.error("删除商品失败", e);
			return false;
		}
		
	}

}
