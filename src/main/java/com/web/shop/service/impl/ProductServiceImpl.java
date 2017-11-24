package com.web.shop.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.shop.domain.Product;
import com.web.shop.mapper.ProductMapper;
import com.web.shop.service.ProductService;

@Service("productService")
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductMapper productMapper;

	@Override
	public Product findById(int productId) {
		return productMapper.selectByPrimaryKey(productId);
	}
	
	
}
