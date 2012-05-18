package com.test.util;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ReadCSVUtil {
	//文件名
	private String filename = null;

	private BufferedReader bufferedreader = null;

	private List rows = new ArrayList();

	public ReadCSVUtil() {

	}

	public ReadCSVUtil(String filename) throws IOException {
		this.filename = filename;
		FileReader fileReader=new FileReader(filename);
		bufferedreader = new BufferedReader(fileReader);
		String stemp;
		while ((stemp = bufferedreader.readLine()) != null) {
			rows.add(stemp);
		}
		fileReader.close();
		bufferedreader.close();
	}

	public List getRows() throws IOException {
		return rows;
	}

	public int getRowNum() {
		return rows.size();
	}

	public int getColNum() {
		if (!rows.toString().equals("[]")) {
			if (rows.get(0).toString().contains(",")) {
				return rows.get(0).toString().split(",").length;
			} else if (rows.get(0).toString().trim().length() != 0) {
				return 1;
			} else {
				return 0;
			}
		} else {
			return 0;
		}
	}
    //获取行值串
	public String getRow(int index) {
		if (this.rows.size() != 0)
			return (String) rows.get(index).toString().trim();
		else
			return null;
	}
    //获取列值串
	public String getCol(int index) {
		if (this.getColNum() == 0) {
			return null;
		}
		StringBuffer scol = new StringBuffer();
		String temp = null;
		int colnum = this.getColNum();
		//大于一列
		if (colnum > 1) {
			for (Iterator it = rows.iterator(); it.hasNext();) {
				temp = it.next().toString().trim();
				scol = scol.append(temp.split(",")[index] + ",");
			}
		} else {
			for (Iterator it = rows.iterator(); it.hasNext();) {
				temp = it.next().toString().trim();
				scol = scol.append(temp + ",");
			}
		}
		String str = new String(scol.toString());
		//去调末尾","
		str = str.substring(0, str.length() - 1);
		return str;
	}

	public String getString(int row, int col) {
		String temp = null;
		int colnum = this.getColNum();
		if (colnum > 1) {
			temp = rows.get(row).toString().split(",")[col].trim();
		} else if (colnum == 1) {
			temp = rows.get(row).toString().trim();
		} else {
			temp = null;
		}
		return temp;
	}

	public void CsvClose() throws IOException {
		this.bufferedreader.close();
	}

	public void test() throws IOException {
		ReadCSVUtil cu = new ReadCSVUtil("C:/r_bldInfo.CSV");
		List tt = cu.getRows();
		for (Iterator itt = tt.iterator(); itt.hasNext();) {
			System.out.println(itt.next().toString());
		}
		System.out.println(cu.getRowNum());
		System.out.println(cu.getColNum());
		System.out.println(cu.getRow(0));
		System.out.println(cu.getCol(0));
		System.out.println(cu.getString(0, 0));
		cu.CsvClose();

	}

	public static void main(String[] args) throws IOException {
		ReadCSVUtil test = new ReadCSVUtil();
		test.test();
	}
}
