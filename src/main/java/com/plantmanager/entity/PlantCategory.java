package com.plantmanager.entity;
/**
 * @Entity 植物种类 
 * @author Administrator
 *
 */
public class PlantCategory {
	private String categoryid;
	private Integer categorylevel;
	private String categoryname;
	
	public String getCategoryid() {
		return categoryid;
	}
	public void setCategoryid(String categoryid) {
		this.categoryid = categoryid;
	}
	public Integer getCategorylevel() {
		return categorylevel;
	}
	public void setCategorylevel(Integer categorylevel) {
		this.categorylevel = categorylevel;
	}
	public String getCategoryname() {
		return categoryname;
	}
	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}
	
	
}
