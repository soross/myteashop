package com.crm.group.excel;

import java.io.*; 
import jxl.*; 
import jxl.write.*;

/**
 * 创建Excel文件
 * */
public class CreatXLS {
	
	/**
	 * 创建Excel文件
	 * */
	public void creatExcelFile(String path){
		try { //打开文件 
			WritableWorkbook book= Workbook.createWorkbook(new File(path)); 
			//生成名为“第一页”的工作表，参数0表示这是第一页 
			WritableSheet sheet=book.createSheet("第一页",0); 
			//在Label对象的构造子中指名单元格位置是第一列第一行(0,0) //以及单元格内容为test 
			Label la = new Label(0,0,"test");
			sheet.addCell(la.copyTo(0,0));
			book.write(); 
			book.close();
		}
		catch(Exception e) { 
		}
	}
	
	public static void main(String args[]) { 
		new  CreatXLS().creatExcelFile("d:\\test.xls");
		System.out.println("OK!");
	} 
} 
