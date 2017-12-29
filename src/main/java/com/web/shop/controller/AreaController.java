package com.web.shop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.shop.domain.Area;
import com.web.shop.service.AreaService;

@Controller
@RequestMapping(value = "/area")
public class AreaController {

	@Autowired
	private AreaService areaService;
	
	@RequestMapping(value = "/getList")
	public 
	@ResponseBody List<Area> getList() {
		return areaService.findAll();
	}
	
}
