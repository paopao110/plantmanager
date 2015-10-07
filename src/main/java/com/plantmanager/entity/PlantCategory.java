package com.plantmanager.entity;
/**
 * @Entity 植物种类 
 * @author Administrator
 *
 */
public class PlantCategory {
	private Integer id;
	private String categoryid;
	private String categoryname;
	private Integer categorylevel;
	private String categoryremark;
	private Integer _parentId;
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
	public String getCategoryremark() {
		return categoryremark;
	}
	public void setCategoryremark(String categoryremark) {
		this.categoryremark = categoryremark;
	}
	public Integer get_parentId() {
		return _parentId;
	}
	public void set_parentId(Integer _parentId) {
		this._parentId = _parentId;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
}
