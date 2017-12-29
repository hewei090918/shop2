package com.web.shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.shop.domain.Area;
import com.web.shop.mapper.AreaMapper;
import com.web.shop.service.AreaService;

@Service("areaService")
public class AreaServiceImpl implements AreaService {
	
	@Autowired
	private AreaMapper areaMapper;

	@Override
	public List<Area> findAll() {
		return areaMapper.selectByExample(null);
	}

}
