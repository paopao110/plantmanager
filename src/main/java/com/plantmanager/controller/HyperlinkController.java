package com.plantmanager.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HyperlinkController {
	
	
	@RequestMapping(value="admin/linkplantmanager")
	public String linkPlantManager(@RequestParam(value="type") String type,HttpServletRequest request){
		request.setAttribute("type", type);
		return "frame/mainbody";
	}
	
	/**
	 * 链接子页面
	 * @param type
	 * @param request
	 * @return
	 */
	@RequestMapping(value="admin/linkSubBodyPaper")
	public String linkSubBodyPaper(@RequestParam(value="type") String type,HttpServletRequest request){
		if(type.equals("11")){
			return getPlantCategoryPage(request);
		}
		return null;
	}
	
	/**
	 * 获取植物分类页面
	 * @param request
	 * @return
	 */
	private String getPlantCategoryPage(HttpServletRequest request){
		
		return "frame/mainbody-plantcategory";
	}
}
