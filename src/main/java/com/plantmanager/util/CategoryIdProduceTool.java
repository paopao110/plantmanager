package com.plantmanager.util;

public class CategoryIdProduceTool {
	public static int STR_LEN=5;
	public static String getSubCategoryId(String categoryid,int counter){
		String counterStr = String.valueOf(counter);
		int len = counterStr.length();
		StringBuilder  tempCategoryid = new StringBuilder();;
		if(len<=STR_LEN){
			int appendSize = STR_LEN - len;
			while(appendSize>0){
				tempCategoryid.append("0");
				appendSize--;
			}
		}
		tempCategoryid.append(counterStr);
		
		return categoryid+"-"+tempCategoryid.toString();
	}
	
	public static void main(String args[]){
		for(int i=0;i<1000;i++){
			System.out.println(getSubCategoryId("A-00009",i));
		}
	}
}
