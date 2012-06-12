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
 * excel����������
 * 
 * @author student
 * 
 */
public class DoExcelUtil {

	private WritableSheet sheet = null;

	private WritableWorkbook book;

	/**
	 * ����Excel�ļ�
	 */
	public void creatExcelFile(String path) {
		try { // ���ļ�
			WritableWorkbook book = Workbook.createWorkbook(new File(path));
			// ������Ϊ����һҳ���Ĺ���������0��ʾ���ǵ�һҳ
			WritableSheet sheet = book.createSheet("��һҳ", 0);
			// ��Label����Ĺ�������ָ����Ԫ��λ���ǵ�һ�е�һ��(0,0) //�Լ���Ԫ������Ϊtest

			book.write();
			book.close();
		} catch (Exception e) {
		}
	}

	/**
	 * ����Excelָ���ļ�
	 */
	public void openExcel(String path) throws Exception {// Excel����ļ�

		Workbook wb = Workbook.getWorkbook(new File(path)); // ��һ���ļ��ĸ���������ָ������д�ص�ԭ�ļ�
		book = Workbook.createWorkbook(new File(path), wb); // ���һ��������
		sheet = book.getSheet(0);
	}

	/**
	 * �������ݿ��������ӵ�Excel��
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
	 * ����Excel
	 * 
	 * @param response
	 * @param title
	 *            ��������
	 * @param list
	 *            ����(DynaBean���ϣ�
	 * @param sheetTitle
	 *            Excel����
	 * @throws Exception
	 */
	public void export2Excel(HttpServletResponse response, String title[],
			DynaBean dbs[], String sheetTitle) throws Exception {
		// List list = TaskDao.getRwhzList(jcdq, nf, xh, jcdw, jcsj, jyjg, rwly,
		// spmc, splb, sfzf, currentPage);
		// list = TaskDao.
		try {
			// ��WritableWorkbookֱ��д�뵽�����
			OutputStream os = response.getOutputStream();
			String fs = sheetTitle;
			fs = new String(fs.getBytes("gb2312"), "iso8859-1");
			response.reset();// ��������
			response.setContentType("application/msexcel");// �����������
			response.setHeader("Content-disposition", "attachment; filename="
					+ fs + ".xls");// �趨����ļ�ͷ
			jxl.write.WritableWorkbook wwb = Workbook.createWorkbook(os);

			// ����Excel������
			jxl.write.WritableSheet ws = wwb.createSheet(sheetTitle, 0);
			/**
			 * 23��,����ռ��2��
			 */
			// ******************��ʽ��ʼ**********************
			// ******************��ʽ��ʼ**********************
			// ******************��ʽ��ʼ**********************
			int charTitle = 10;// ���������С
			int charNormal = 10;// ���������С
			// ��Ӵ�������Formatting�Ķ���

			// ���ڱ���
			jxl.write.WritableFont titleFont = new jxl.write.WritableFont(
					WritableFont.createFont("����"), charTitle, WritableFont.BOLD);

			jxl.write.WritableCellFormat titleFormat = new jxl.write.WritableCellFormat(
					titleFont);
			titleFormat.setBorder(Border.ALL, BorderLineStyle.THIN); // ����
			titleFormat.setVerticalAlignment(VerticalAlignment.CENTRE); // ��ֱ����
			titleFormat.setAlignment(Alignment.CENTRE); // ˮƽ����
			titleFormat.setWrap(true); // �Ƿ���
			titleFormat.setBackground(Colour.GRAY_25);// ����ɫ����-25%

			// ��������
			WritableFont normalFont = new WritableFont(WritableFont
					.createFont("����"), charNormal);
			jxl.write.WritableCellFormat normalFormat = new jxl.write.WritableCellFormat(
					normalFont);
			normalFormat.setBorder(Border.ALL, BorderLineStyle.THIN); // ����
			normalFormat.setVerticalAlignment(VerticalAlignment.CENTRE); // ��ֱ����
			normalFormat.setAlignment(Alignment.CENTRE);// ˮƽ����
			normalFormat.setWrap(true); // �Ƿ���

			// ���ڴ���formatting��Number����
			WritableFont nf = new WritableFont(WritableFont
					.createFont("Times New Roman"), charNormal);
			// jxl.write.NumberFormat nf = new jxl.write.NumberFormat("#.##");
			jxl.write.WritableCellFormat wcfN = new jxl.write.WritableCellFormat(
					nf);
			wcfN.setBorder(Border.ALL, BorderLineStyle.THIN); // ����
			wcfN.setVerticalAlignment(VerticalAlignment.CENTRE); // ��ֱ����
			wcfN.setAlignment(Alignment.CENTRE);// ˮƽ����
			wcfN.setWrap(true); // �Ƿ���

			// ******************end��ʽ*********************
			// ******************end��ʽ*********************

			/**
			 * ��ӱ���
			 */
			// ��һ��(���⣩
			/** *********�����п�ÿ������ռcharset��**************** */
			if (title != null) {
				for (int i = 0; i < title.length; i++) {
					ws.setColumnView(i, 15);// ����ÿ�п�Ϊ15
					jxl.write.Label tit00 = new jxl.write.Label(i, 0, title[i],
							titleFormat);
					ws.addCell(tit00);
				}
			}

			// �ڶ���(���ݣ�
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

			// д��Exel������
			wwb.write();
			// �ر�Excel����������
			wwb.close();
			os.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
