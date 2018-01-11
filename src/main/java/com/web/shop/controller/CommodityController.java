package com.web.shop.controller;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.shop.bean.query.CommodityFilter;
import com.web.shop.common.bean.JsonResult;
import com.web.shop.common.bean.PageViewBean;
import com.web.shop.domain.Commodity;
import com.web.shop.service.CommodityService;

@Controller
@RequestMapping(value = "/commodity")
public class CommodityController {

	@Autowired
	private CommodityService commodityService;
	
	@RequestMapping(value = "/queryPage")
	public 
	@ResponseBody PageViewBean<Commodity> queryPage(@ModelAttribute CommodityFilter filter) {
		PageViewBean<Commodity> pageView = new PageViewBean<Commodity>();
		int total = commodityService.count(filter);
		List<Commodity> data = commodityService.find(filter);
		pageView.setTotal(total);
		pageView.setData(data);
		return pageView;
	}
	
	@RequestMapping(value = "/updateCommodity")
	public 
	@ResponseBody JsonResult updateCommodity(@ModelAttribute Commodity commodity) {
		JsonResult result = new JsonResult();
		boolean success = commodityService.update(commodity);
		if(success) {
			result.setSuccess(true);
			result.setMessage("修改商品成功!");
		}else{
			result.setSuccess(false);
			result.setMessage("修改商品失败!");
		}
		return result;
	}
	
	@RequestMapping(value = "/deleteCommodity")
	public 
	@ResponseBody JsonResult deleteCommodity(@RequestParam String ids) {
		JsonResult result = new JsonResult();
		boolean success = commodityService.delete(ids);
		if(success) {
			result.setSuccess(true);
			result.setMessage("删除商品成功!");
		}else{
			result.setSuccess(false);
			result.setMessage("删除商品失败!");
		}
		return result;
	}
	
	@RequestMapping(value = "/commoditySell")
	public 
	@ResponseBody JsonResult commoditySell(@RequestParam String ids) {
		JsonResult result = new JsonResult();
		boolean success = commodityService.sell(ids);
		if(success) {
			result.setSuccess(true);
			result.setMessage("商品出售成功!");
		}else{
			result.setSuccess(false);
			result.setMessage("商品出售失败!");
		}
		return result;
	}
	
	@RequestMapping(value = "/commodityDown")
	public 
	@ResponseBody JsonResult commodityDown(@RequestParam String ids) {
		JsonResult result = new JsonResult();
		boolean success = commodityService.down(ids);
		if(success) {
			result.setSuccess(true);
			result.setMessage("商品下架成功!");
		}else{
			result.setSuccess(false);
			result.setMessage("商品下架失败!");
		}
		return result;
	}
	
	@RequestMapping(value = "/commodityUp")
	public
	@ResponseBody JsonResult commodityUp(@RequestParam String upId, @RequestParam String upAmount) {
		JsonResult result = new JsonResult();
		if(StringUtils.isNotBlank(upId) && StringUtils.isNotBlank(upAmount)) {
			boolean success = commodityService.up(Integer.parseInt(upId), Long.parseLong(upAmount));
			if(success) {
				result.setSuccess(true);
				result.setMessage("商品上架成功!");
			}else{
				result.setSuccess(false);
				result.setMessage("商品上架失败!");
			}
		}
		
		return result;
	}
	
}
