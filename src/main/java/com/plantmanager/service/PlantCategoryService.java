package com.plantmanager.service;

import java.util.List;

import com.plantmanager.entity.PlantCategory;

public interface PlantCategoryService {
	
	/**
	 * 分页获取植物类别信息
	 * @param begin
	 * @param number
	 * @return
	 */
	public List<PlantCategory> getPlantCategoryByPaging(Integer begin,Integer number);
	/**
	 * 获取所有植物类别
	 * @return
	 */
	public List<PlantCategory> getAllPlantCategory();
	/**
	 * 更新植物类别信息
	 * @param plantCategory
	 * @return
	 */
	public boolean updatePlantCategoryInfo(PlantCategory plantCategory);
	/**
	 * 插入植物类别信息
	 * @param plantCategory
	 * @return
	 */
	public boolean insertPlantCategoryInfo(PlantCategory plantCategory);
	
	/**
	 * 获取最新的OrderID
	 * @return
	 */
	public Integer getLastIndexId();
}
