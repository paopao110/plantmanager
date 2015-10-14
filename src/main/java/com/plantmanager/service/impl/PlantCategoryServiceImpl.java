package com.plantmanager.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.plantmanager.dao.PlantCategoryMapper;
import com.plantmanager.entity.PlantCategory;
import com.plantmanager.service.PlantCategoryService;
import com.plantmanager.util.CategoryIdProduceTool;

@Service
public class PlantCategoryServiceImpl implements PlantCategoryService{
	
	@Autowired 
	private PlantCategoryMapper plantCategoryMapper;

	@Override
	public List<PlantCategory> getPlantCategoryByPaging(Integer begin,Integer number) {
		return plantCategoryMapper.getPlantCategoryByPaging(begin, number);
	}

	@Override
	public boolean updatePlantCategoryInfo(PlantCategory plantCategory) {
		return plantCategoryMapper.updatePlantCategoryInfo(plantCategory);
	}

	@Override
	public boolean insertPlantCategoryInfo(PlantCategory plantCategory) {
		return plantCategoryMapper.insertPlantCategoryInfo(plantCategory);
	}

	@Override
	public Integer getLastIndexId() {
		return plantCategoryMapper.getLastIndexId();
	}

	@Override
	public List<PlantCategory> getAllPlantCategory() {
		return plantCategoryMapper.getAllPlantCategory();
	}

	@Override
	public boolean insertPlantCategoryInfoByAuto(List<String> plantCategory,String id,String categoryid,String categorylevel) {
		List<PlantCategory> plantCategoryList = new ArrayList<PlantCategory>();
		int counter = 1;
		for(String str:plantCategory){
			PlantCategory category = new PlantCategory();
			category.set_parentId(Integer.valueOf(id));
			category.setCategoryname(str);
			category.setCategorylevel(Integer.valueOf(categorylevel)+1);
			String subCategoryId = CategoryIdProduceTool.getSubCategoryId(categoryid, counter);
			category.setCategoryid(subCategoryId);
			System.out.println(subCategoryId);
			counter++;
			plantCategoryList.add(category);
		}
		boolean flag =plantCategoryMapper.insertPlantCategoryInfoByBatch(plantCategoryList);
		return flag;
	}

}
