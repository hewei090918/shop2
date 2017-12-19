package com.web.shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.shop.domain.Dept;
import com.web.shop.domain.DeptExample;
import com.web.shop.domain.DeptExample.Criteria;
import com.web.shop.mapper.DeptMapper;
import com.web.shop.service.DeptService;

@Service("deptService")
public class DeptServiceImpl implements DeptService {

	@Autowired
	private DeptMapper deptMapper;
	
	@Override
	public Dept findById(int deptId) {
		return deptMapper.selectByPrimaryKey(deptId);
	}

	@Override
	public List<Dept> findAll() {
		return deptMapper.selectByExample(null);
	}

	@Override
	public List<Dept> findByParentId(int parentId) {
		DeptExample example = new DeptExample();
		Criteria criteria = example.createCriteria();
		if(parentId > 0) {
			criteria.andParentIdEqualTo(parentId);
		}
		List<Dept> list = deptMapper.selectByExample(example);
		return list;
	}

}
