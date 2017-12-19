package com.web.shop.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.shop.domain.Profession;
import com.web.shop.mapper.ProfessionMapper;
import com.web.shop.service.ProfessionService;

@Service("professionService")
public class ProfessionServiceImpl implements ProfessionService {

	@Autowired
	private ProfessionMapper professionMapper;
	
	@Override
	public Profession findById(int professionId) {
		return professionMapper.selectByPrimaryKey(professionId);
	}

}
