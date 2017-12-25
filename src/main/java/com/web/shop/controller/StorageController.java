package com.web.shop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.shop.bean.query.StorageFilter;
import com.web.shop.common.bean.PageViewBean;
import com.web.shop.domain.Storage;
import com.web.shop.service.StorageService;

@Controller
@RequestMapping(value = "/storage")
public class StorageController {

	@Autowired
	private StorageService storageService;
	
	@RequestMapping(value = "/queryPage")
	public 
	@ResponseBody PageViewBean<Storage> queryPage(@ModelAttribute StorageFilter filter) {
		PageViewBean<Storage> pageView = new PageViewBean<Storage>();
		int total = storageService.count(filter);
		List<Storage> data = storageService.find(filter);
		pageView.setTotal(total);
		pageView.setData(data);
		return pageView;
	}
	
}
