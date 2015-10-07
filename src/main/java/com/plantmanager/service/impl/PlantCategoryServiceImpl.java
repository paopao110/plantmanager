package com.plantmanager.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.plantmanager.dao.PlantCategoryMapper;
import com.plantmanager.entity.PlantCategory;
import com.plantmanager.service.PlantCategoryService;

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
		// TODO Auto-generated method stub
		return plantCategoryMapper.getAllPlantCategory();
	}
	
	

}
