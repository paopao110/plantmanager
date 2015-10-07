package com.plantmanager.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.plantmanager.entity.PlantCategory;
import com.plantmanager.service.PlantCategoryService;

@Controller
public class PlantCategoryController {
	@Autowired
	private PlantCategoryService plantCategoryService;
	
	@RequestMapping(value="getPlantCategory")
	public @ResponseBody List<PlantCategory> getPlantCategoryByPaging(){
		return  plantCategoryService.getPlantCategoryByPaging(0, 4);
	}
	
	@RequestMapping(value="getAllPlantCategory")
	public @ResponseBody List<PlantCategory> getAllPlantCategory(){
		return  plantCategoryService.getAllPlantCategory();
	}
	
	@RequestMapping(value="updatePlantCategoryInfo",method=RequestMethod.POST)
	public @ResponseBody Boolean updatePlantCategoryInfo(@ModelAttribute PlantCategory plantCategory){
		boolean flag = plantCategoryService.updatePlantCategoryInfo(plantCategory);
		return flag;
	}
	
	@RequestMapping(value="insertPlantCategoryInfo",method=RequestMethod.POST)
	public @ResponseBody Boolean insertPlantCategoryInfo(@ModelAttribute PlantCategory plantCategory){
		if(plantCategory!=null&&plantCategory.getId()!=null){
			plantCategory.set_parentId(plantCategory.getId());
			boolean flag = plantCategoryService.insertPlantCategoryInfo(plantCategory);
			return flag;
		}
		return false;
	}
	
	@RequestMapping(value="getLastOrderId",method=RequestMethod.POST)
	public @ResponseBody Integer getLastOrderId(){
		Integer lastIndex = plantCategoryService.getLastIndexId();
		if(lastIndex==null){
			lastIndex=1;
		}
		return lastIndex;
	}
}
