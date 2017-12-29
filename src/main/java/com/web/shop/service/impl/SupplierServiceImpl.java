package com.web.shop.service.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.shop.bean.query.SupplierFilter;
import com.web.shop.domain.Supplier;
import com.web.shop.domain.SupplierExample;
import com.web.shop.domain.SupplierExample.Criteria;
import com.web.shop.mapper.AreaMapper;
import com.web.shop.mapper.SupplierMapper;
import com.web.shop.service.SupplierService;

@Service("supplierService")
public class SupplierServiceImpl implements SupplierService {
	
	private Logger logger = Logger.getLogger(this.getClass());
	
	@Autowired
	private SupplierMapper supplierMapper;
	
	@Autowired
	private AreaMapper areaMapper;

	@Override
	public Supplier findById(int supplierId) {
		return supplierMapper.selectByPrimaryKey(supplierId);
	}

	@Override
	public List<Supplier> findAll() {
		return supplierMapper.selectByExample(null);
	}

	@Override
	public int count(SupplierFilter filter) {
		SupplierExample example = new SupplierExample();
		Criteria criteria = example.createCriteria();
		/*
		 * 按供应商名称查询
		 */
		String supplierName = filter.getSupplierName();
		if(StringUtils.isNotBlank(supplierName)) {
			criteria.andSupplierNameLike("%" + supplierName + "%");
		}
		/*
		 * 按所在地区查询
		 */
		String areaId = filter.getAreaId();
		if(StringUtils.isNotBlank(areaId)) {
			criteria.andAreaIdEqualTo(Integer.parseInt(areaId));
		}
		
		return supplierMapper.countByExample(example);
	}

	@Override
	public List<Supplier> find(SupplierFilter filter) {
		SupplierExample example = new SupplierExample();
		Criteria criteria = example.createCriteria();
		/*
		 * 按供应商名称查询
		 */
		String supplierName = filter.getSupplierName();
		if(StringUtils.isNotBlank(supplierName)) {
			criteria.andSupplierNameLike("%" + supplierName + "%");
		}
		/*
		 * 按所在地区查询
		 */
		String areaId = filter.getAreaId();
		if(StringUtils.isNotBlank(areaId)) {
			criteria.andAreaIdEqualTo(Integer.parseInt(areaId));
		}
		
		List<Supplier> list = supplierMapper.selectByExample(example);
		if(list != null && list.size() > 0) {
			for(Supplier supplier: list) {
				String areaName = areaMapper.selectByPrimaryKey(supplier.getAreaId()).getAreaName();
				supplier.setAreaName(areaName);
			}
		}
		return list;
	}

	@Override
	public boolean save(Supplier supplier) {
		try{
			supplierMapper.insert(supplier);
			logger.info("新增供应商成功");
			return true;
		}catch(Exception e) {
			logger.error("新增供应商失败", e);
			return false;
		}
	}

	@Override
	public boolean update(Supplier supplier) {
		try{
			supplierMapper.updateByPrimaryKey(supplier);
			logger.info("更新供应商成功");
			return true;
		}catch(Exception e) {
			logger.error("更新供应商失败", e);
			return false;
		}
	}

	@Override
	public boolean deleteById(int supplierId) {
		try{
			supplierMapper.deleteByPrimaryKey(supplierId);
			logger.info("删除供应商成功");
			return true;
		}catch(Exception e) {
			logger.error("删除供应商失败", e);
			return false;
		}
	}

	@Override
	public boolean delete(String ids) {
		String[] idstr = ids.split(",");
		try{
			for(String id: idstr) {
				supplierMapper.deleteByPrimaryKey(Integer.parseInt(id));
			}
			logger.info("批量删除供应商成功");
			return true;
		}catch(Exception e) {
			logger.error("批量删除供应商失败", e);
			return false;
		}
	}

}
