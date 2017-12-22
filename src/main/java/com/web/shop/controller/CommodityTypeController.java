package com.web.shop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.shop.domain.CommodityType;
import com.web.shop.service.CommodityTypeService;

@Controller
@RequestMapping(value = "/commodityType")
public class CommodityTypeController {

	@Autowired
	private CommodityTypeService commodityTypeService;
	
	@RequestMapping(value = "/getList")
	public 
	@ResponseBody List<CommodityType> getList() {
		return commodityTypeService.findAll();
	}
	
}
