package com.crm.group.excel;

import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;



/**
 * @author sucjia
 */
public class ImportExcel {
	private Connection con = null;

	private WritableSheet sheet = null;

	private WritableWorkbook book;

	/**
	 * ȡ��һ�����Ӷ���
	 * 
	 * @param Connection
	 */
	public void getCon(Connection con) throws Exception {
		this.con = con;
	}

	/**
	 * ����Excelָ���ļ�
	 */
	public void openExcel(String path) throws Exception {// Excel����ļ�
        System.out.println(path);
		Workbook wb = Workbook.getWorkbook(new File(path)); // ��һ���ļ��ĸ���������ָ������д�ص�ԭ�ļ�
		book = Workbook.createWorkbook(new File(path), wb); // ���һ��������
		sheet = book.getSheet(0);
	}

	/**
	 * �������ݿ��������ӵ�Excel��
	 */
	public void importData(String sql) {
		try {
			List list = new ArrayList();

			PreparedStatement pstm = con.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();
			ResultSetMetaData rsmd = rs.getMetaData();
			int colCnt = rsmd.getColumnCount();
			for(int k=1;k<colCnt+1;k++){
				String title = rsmd.getColumnName(k);
				System.out.println("title"+title);
				Label labelTitle = new Label(k-1,0,title);
				sheet.addCell(labelTitle);
			}
			int i = 1;

			while (rs.next()) {
				System.out.println(i);
				for (int j = 1; j < colCnt+1; j++) {
					String colName = rsmd.getColumnName(j);
					String colValue = rs.getString(colName);
					Label label = new Label(j-1, i, colValue);
					sheet.addCell(label);
					System.out.println(colName + ":" + colValue);
				}
				i++;
			}
			book.write();
			book.close();
			pstm.close();
			con.close();
		} catch (Exception e) {
			System.out.println("Exception");
		}
	}

	public static void main(String[] args) {
		//String excelPath = "d:\\test.xls";
		String excelPath = "d:\\"+System.currentTimeMillis()+".xls";
		String sql = "select * from groups";
 
		System.out.println("----- create excel file ----");
		new CreatXLS().creatExcelFile(excelPath);
		System.out.println("----- write excel file ----");
		ImportExcel impExcel = new ImportExcel();
		try {
			impExcel.getCon(ConnOracle.getConn());
			impExcel.openExcel(excelPath);
			impExcel.importData(sql);
			System.out.println("OK!");
		} catch (Exception e) {
			// TODO �Զ����� catch ��
			e.printStackTrace();
		}

	}
}
