package com.web.shop.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.web.shop.domain.Profession;
import com.web.shop.mapper.ProfessionMapper;
import com.web.shop.service.ProfessionService;

public class ProfessionServiceImpl implements ProfessionService {

	@Autowired
	private ProfessionMapper professionMapper;
	
	@Override
	public Profession findById(int professionId) {
		return professionMapper.selectByPrimaryKey(professionId);
	}

}
