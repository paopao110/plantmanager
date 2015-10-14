package com.plantmanager.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.plantmanager.entity.PlantCategory;
import com.plantmanager.service.PlantCategoryService;
import com.plantmanager.util.FileReaderTool;

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
	
	@RequestMapping(value="uploadSubCategoryFile",method=RequestMethod.POST)
	public @ResponseBody Boolean uploadSubCategoryFile(@RequestParam(value = "file", required = false) MultipartFile file,
			HttpServletRequest request,String id,String categoryid,String categorylevel) {
		if(file==null||id==null||categoryid==null || categorylevel == null){
			return false;
		}
		ServletContext sc = request.getSession().getServletContext();
		String uploadpath = sc.getRealPath("/src/upload");
		System.out.println(uploadpath);
		String fileName = System.currentTimeMillis()+".txt";
		File savefile = new File(new File(uploadpath),fileName);
        if (!savefile.getParentFile().exists())
            savefile.getParentFile().mkdirs();
        try {
			file.transferTo(savefile);//save file
			List<String> plantCategoryName = FileReaderTool.readFileByLines(uploadpath+"/"+fileName);
			if(plantCategoryName!=null&&plantCategoryName.size()>0){
				return plantCategoryService.insertPlantCategoryInfoByAuto(plantCategoryName,id,categoryid,categorylevel);
			}
		} catch (Exception e) {
			return false;
		} 
		return true;
	}
}
