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
}
