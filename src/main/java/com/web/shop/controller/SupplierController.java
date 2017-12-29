package com.web.shop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.shop.bean.query.SupplierFilter;
import com.web.shop.common.bean.JsonResult;
import com.web.shop.common.bean.PageViewBean;
import com.web.shop.domain.Supplier;
import com.web.shop.service.SupplierService;

@Controller
@RequestMapping(value = "/supplier")
public class SupplierController {

	@Autowired
	private SupplierService supplierService;
	
	@RequestMapping(value = "/queryPage")
	public 
	@ResponseBody PageViewBean<Supplier> queryPage(@ModelAttribute SupplierFilter filter) {
		PageViewBean<Supplier> pageView = new PageViewBean<Supplier>();
		int total = supplierService.count(filter);
		List<Supplier> data = supplierService.find(filter);
		pageView.setTotal(total);
		pageView.setData(data);
		return pageView;
	}
	
	@RequestMapping(value = "/getList")
	public 
	@ResponseBody List<Supplier> getList() {
		return supplierService.findAll();
	}
	
	@RequestMapping(value = "/addSupplier")
	public 
	@ResponseBody JsonResult addSupplier(@ModelAttribute Supplier supplier) {
		JsonResult result = new JsonResult();
		boolean success = supplierService.save(supplier);
		if(success) {
			result.setSuccess(true);
			result.setMessage("新增供应商成功!");
		}else{
			result.setSuccess(false);
			result.setMessage("新增供应商失败!");
		}
		return result;
	}
	
	@RequestMapping(value = "/deleteSupplier")
	public 
	@ResponseBody JsonResult deleteSupplier(@RequestParam String ids) {
		JsonResult result = new JsonResult();
		boolean success = supplierService.delete(ids);
		if(success) {
			result.setSuccess(true);
			result.setMessage("删除供应商成功!");
		}else{
			result.setSuccess(false);
			result.setMessage("删除供应商失败!");
		}
		return result;
	}
	
	
}
