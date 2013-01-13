package com.crm.pub.excel;

import java.io.File;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import jxl.Workbook;
import jxl.format.Alignment;
import jxl.format.Border;
import jxl.format.BorderLineStyle;
import jxl.format.Colour;
import jxl.format.VerticalAlignment;
import jxl.write.Label;
import jxl.write.WritableFont;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;

import org.apache.commons.beanutils.DynaBean;

/**
 * excel操作工具类
 * 
 * @author student
 * 
 */
public class DoExcelUtil {

	private WritableSheet sheet = null;

	private WritableWorkbook book;

	/**
	 * 创建Excel文件
	 */
	public void creatExcelFile(String path) {
		try { // 打开文件
			WritableWorkbook book = Workbook.createWorkbook(new File(path));
			// 生成名为“第一页”的工作表，参数0表示这是第一页
			WritableSheet sheet = book.createSheet("第一页", 0);
			// 在Label对象的构造子中指名单元格位置是第一列第一行(0,0) //以及单元格内容为test

			book.write();
			book.close();
		} catch (Exception e) {
		}
	}

	/**
	 * 载入Excel指定文件
	 */
	public void openExcel(String path) throws Exception {// Excel获得文件

		Workbook wb = Workbook.getWorkbook(new File(path)); // 打开一个文件的副本，并且指定数据写回到原文件
		book = Workbook.createWorkbook(new File(path), wb); // 添加一个工作表
		sheet = book.getSheet(0);
	}

	/**
	 * 载入数据库的数据添加到Excel中
	 */
	public void exportToExcel(String sql, Connection con) {
		try {
			List list = new ArrayList();

			PreparedStatement pstm = con.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();
			ResultSetMetaData rsmd = rs.getMetaData();
			int colCnt = rsmd.getColumnCount();
			for (int k = 1; k < colCnt + 1; k++) {
				String title = rsmd.getColumnName(k);
				Label labelTitle = new Label(k - 1, 0, title);
				sheet.addCell(labelTitle);
			}
			int i = 1;

			while (rs.next()) {
				System.out.println(i);
				for (int j = 1; j < colCnt + 1; j++) {
					String colName = rsmd.getColumnName(j);
					String colValue = rs.getString(colName);
					Label label = new Label(j - 1, i, colValue);
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
		DoExcelUtil excelUtil = new DoExcelUtil();
		excelUtil.creatExcelFile("d:\\test.xls");

		try {
			excelUtil.openExcel("d:\\test.xls");

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * 导出Excel
	 * 
	 * @param response
	 * @param title
	 *            标题数组
	 * @param list
	 *            数据(DynaBean集合）
	 * @param sheetTitle
	 *            Excel表名
	 * @throws Exception
	 */
	public void export2Excel(HttpServletResponse response, String title[],
			DynaBean dbs[], String sheetTitle) throws Exception {
		// List list = TaskDao.getRwhzList(jcdq, nf, xh, jcdw, jcsj, jyjg, rwly,
		// spmc, splb, sfzf, currentPage);
		// list = TaskDao.
		try {
			// 将WritableWorkbook直接写入到输出流
			OutputStream os = response.getOutputStream();
			String fs = sheetTitle;
			fs = new String(fs.getBytes("gb2312"), "iso8859-1");
			response.reset();// 清空输出流
			response.setContentType("application/msexcel");// 定义输出类型
			response.setHeader("Content-disposition", "attachment; filename="
					+ fs + ".xls");// 设定输出文件头
			jxl.write.WritableWorkbook wwb = Workbook.createWorkbook(os);

			// 创建Excel工作表
			jxl.write.WritableSheet ws = wwb.createSheet(sheetTitle, 0);
			/**
			 * 23列,标题占据2行
			 */
			// ******************格式开始**********************
			// ******************格式开始**********************
			// ******************格式开始**********************
			int charTitle = 10;// 标题字体大小
			int charNormal = 10;// 标题字体大小
			// 添加带有字型Formatting的对象

			// 用于标题
			jxl.write.WritableFont titleFont = new jxl.write.WritableFont(
					WritableFont.createFont("宋体"), charTitle, WritableFont.BOLD);

			jxl.write.WritableCellFormat titleFormat = new jxl.write.WritableCellFormat(
					titleFont);
			titleFormat.setBorder(Border.ALL, BorderLineStyle.THIN); // 线条
			titleFormat.setVerticalAlignment(VerticalAlignment.CENTRE); // 垂直对齐
			titleFormat.setAlignment(Alignment.CENTRE); // 水平对齐
			titleFormat.setWrap(true); // 是否换行
			titleFormat.setBackground(Colour.GRAY_25);// 背景色暗灰-25%

			// 用于正文
			WritableFont normalFont = new WritableFont(WritableFont
					.createFont("宋体"), charNormal);
			jxl.write.WritableCellFormat normalFormat = new jxl.write.WritableCellFormat(
					normalFont);
			normalFormat.setBorder(Border.ALL, BorderLineStyle.THIN); // 线条
			normalFormat.setVerticalAlignment(VerticalAlignment.CENTRE); // 垂直对齐
			normalFormat.setAlignment(Alignment.CENTRE);// 水平对齐
			normalFormat.setWrap(true); // 是否换行

			// 用于带有formatting的Number对象
			WritableFont nf = new WritableFont(WritableFont
					.createFont("Times New Roman"), charNormal);
			// jxl.write.NumberFormat nf = new jxl.write.NumberFormat("#.##");
			jxl.write.WritableCellFormat wcfN = new jxl.write.WritableCellFormat(
					nf);
			wcfN.setBorder(Border.ALL, BorderLineStyle.THIN); // 线条
			wcfN.setVerticalAlignment(VerticalAlignment.CENTRE); // 垂直对齐
			wcfN.setAlignment(Alignment.CENTRE);// 水平对齐
			wcfN.setWrap(true); // 是否换行

			// ******************end格式*********************
			// ******************end格式*********************

			/**
			 * 添加标题
			 */
			// 第一行(标题）
			/** *********设置列宽每个字体占charset个**************** */
			if (title != null) {
				for (int i = 0; i < title.length; i++) {
					ws.setColumnView(i, 15);// 设置每列宽为15
					jxl.write.Label tit00 = new jxl.write.Label(i, 0, title[i],
							titleFormat);
					ws.addCell(tit00);
				}
			}

			// 第二行(数据）
			if (dbs != null) {
				for (int i = 0; i < dbs.length; i++) {
					DynaBean db = dbs[i];
					for (int j = 0; j < title.length; j++) {
						jxl.write.Label lab = new jxl.write.Label(j, i + 1, db
								.get(title[j]) == null ? "" : db.get(title[j])
								.toString(), normalFormat);
						ws.addCell(lab);// 
					}

				}
			}

			// 写入Exel工作表
			wwb.write();
			// 关闭Excel工作薄对象
			wwb.close();
			os.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
