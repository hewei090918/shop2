package com.web.shop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.shop.bean.query.PurchaseFilter;
import com.web.shop.common.bean.JsonResult;
import com.web.shop.common.bean.PageViewBean;
import com.web.shop.domain.Purchase;
import com.web.shop.service.PurchaseService;

@Controller
@RequestMapping(value = "/purchase")
public class PurchaseController {

	@Autowired
	private PurchaseService purchaseService;
	
	@RequestMapping(value = "/queryPage")
	public 
	@ResponseBody PageViewBean<Purchase> queryPage(@ModelAttribute PurchaseFilter filter) {
		PageViewBean<Purchase> pageView = new PageViewBean<Purchase>();
		int total = purchaseService.count(filter);
		List<Purchase> data = purchaseService.find(filter);
		pageView.setTotal(total);
		pageView.setData(data);
		return pageView;
	}
	
	@RequestMapping(value = "/queryByStorageId")
	public
	@ResponseBody PageViewBean<Purchase> queryByStorageId(@RequestParam int storageId) {
		PageViewBean<Purchase> pageView = new PageViewBean<Purchase>();
		int total = purchaseService.countByStorageId(storageId);
		List<Purchase> data = purchaseService.getListByStorageId(storageId);
		pageView.setTotal(total);
		pageView.setData(data);
		return pageView;
	}
	
	@RequestMapping(value = "/addPurchase")
	public 
	@ResponseBody JsonResult addPurchase(@ModelAttribute Purchase purchase) {
		JsonResult result = new JsonResult();
		boolean success = purchaseService.save(purchase);
		if(success) {
			result.setSuccess(true);
			result.setMessage("采购商品成功!");
		}else{
			result.setSuccess(false);
			result.setMessage("采购商品失败!");
		}
		return result;
	}
	
}
