package com.crm.group.excel;

import java.io.*; 
import jxl.*; 
import jxl.write.*;

/**
 * ����Excel�ļ�
 * */
public class CreatXLS {
	
	/**
	 * ����Excel�ļ�
	 * */
	public void creatExcelFile(String path){
		try { //���ļ� 
			WritableWorkbook book= Workbook.createWorkbook(new File(path)); 
			//������Ϊ����һҳ���Ĺ���������0��ʾ���ǵ�һҳ 
			WritableSheet sheet=book.createSheet("��һҳ",0); 
			//��Label����Ĺ�������ָ����Ԫ��λ���ǵ�һ�е�һ��(0,0) //�Լ���Ԫ������Ϊtest 
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
