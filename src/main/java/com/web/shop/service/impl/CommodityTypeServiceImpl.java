package com.web.shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.shop.domain.CommodityType;
import com.web.shop.mapper.CommodityTypeMapper;
import com.web.shop.service.CommodityTypeService;

@Service("commodityTypeService")
public class CommodityTypeServiceImpl implements CommodityTypeService {

	@Autowired
	private CommodityTypeMapper commodityTypeMapper;
	
	@Override
	public List<CommodityType> findAll() {
		return commodityTypeMapper.selectByExample(null);
	}

}
