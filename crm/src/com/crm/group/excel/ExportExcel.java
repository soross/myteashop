
package com.crm.group.excel;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
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

import org.apache.struts.action.ActionForm;
import org.apache.struts.upload.FormFile;
/**
 * ���һЩ���õľ�̬��Ϣ�ĳ�����
 * 
 * @author oushiyin
 * 
 */
public class ExportExcel {

	private Connection con = null;

	private WritableSheet sheet = null;

	private WritableWorkbook book = null;

	

	/**
	 * �ϴ������ļ����ļ������,�������·��
	 * 
	 * @param file
	 *            Ҫ�ϴ���FormFile
	 * @param request
	 *            request
	 * @param contextPath
	 *            �ϴ������·���磺upload
	 * @return ��������ļ���
	 */
	public static String uploadRnd(FormFile file, HttpServletRequest request,
			String contextPath) throws Exception {
		String path = request.getSession().getServletContext().getRealPath(
				contextPath);// ��ȡ����·��
		File fileDir = new File(path);
		if (!fileDir.exists()) {
			fileDir.mkdir();// ����Ŀ¼
		}
		String filename = file.getFileName();
		if (filename != null && !"".equals(filename)) {
			filename = filename.trim();
		}
		String extname = filename.substring(filename.lastIndexOf("."));
		String tmpname = System.currentTimeMillis() + new Random().nextInt(100)
				+ extname;// �����ļ���
		InputStream is = null;
		OutputStream os = null;
		try {
			is = file.getInputStream();// ���ļ�����
			String compPath = "";
			if (path.endsWith("/") || path.endsWith("\\")) {
				compPath = path + tmpname;// �ļ�����·��
			} else {
				compPath = path + File.separator + tmpname;// �ļ�����·��
			}
			os = new FileOutputStream(new File(compPath));// �����ļ������
			int i = 0;
			byte[] buffer = new byte[10240];
			while ((i = is.read(buffer, 0, buffer.length)) != -1) {
				os.write(buffer, 0, i);// ���ļ�д�������
				os.flush();
			}
			os.close();
			is.close();
		} catch (Exception e) {
			throw e;
		} finally {
			if (is != null)
				is.close();
			if (os != null)
				os.close();
		}
		return tmpname;
	}

	/**
	 * �����ϴ��ļ�
	 * 
	 * @param form
	 *            ActionForm
	 * @param request
	 *            request
	 * @param contextPath
	 *            �ϴ�Ŀ���������·���磺upload
	 * @return ���ظ��º���ļ������� ��Map��װ�󱣴���List����
	 *         ���ļ���map.get("old"),���ļ���map.get("new")
	 */
	public static List batchUploadRnd(ActionForm form,
			HttpServletRequest request, String contextPath,
			HttpServletResponse response) throws Exception {
		List list = new ArrayList();
		Hashtable files = form.getMultipartRequestHandler().getFileElements();
		Iterator iter = files.values().iterator();
		while (iter.hasNext()) {
			FormFile file = (FormFile) iter.next();
			if (file == null || file.getFileName().equals("")) {
				continue;
			} else if (file.getFileSize() / 1024 / 1024 > 5) {
				response.getWriter().print(
						"<script>alert('�ļ�" + file.getFileName()
								+ "�Ĵ�С����5M��!!!');history.go(-1);</script>");
				return null;
			} else {
				String tmpname = uploadRnd(file, request, contextPath);
				String filename = file.getFileName();
				if (filename != null && !"".equals(filename)) {
					filename = filename.trim();
				}
				Map map = new HashMap();
				map.put("old", filename);
				map.put("new", tmpname);
				list.add(map);
			}
		}
		return list;
	}

	/**
	 * �������
	 */
	public static Connection getConn() {
		String url = "";
		String user = "";
		String pswd = "";
		String driver = "";
		Connection conn = null;
		try {
			driver = "oracle.jdbc.driver.OracleDriver";
			url = "jdbc:oracle:thin:@localhost:1521:oracle";
			user = "crm";
			pswd = "crm";
			Class.forName(driver).newInstance();
			conn = DriverManager.getConnection(url, user, pswd);
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
		return conn;
	}

	/**
	 * �������ݿ��������ӵ�Excel��
	 */
	public void importData(String sql, String titles[]) throws Exception {
		PreparedStatement pstm = con.prepareStatement(sql);
		ResultSet rs = pstm.executeQuery();
		ResultSetMetaData rsmd = rs.getMetaData();
		int gcol = rsmd.getColumnCount();
		for (int k = 1; k < gcol + 1; k++) {
			String title = titles[k-1];
			Label labelTitle = new Label(k - 1, 0, title);
			sheet.addCell(labelTitle);
		}
		int i = 1;

		while (rs.next()) {
			for (int j = 1; j < gcol + 1; j++) {
				String colName = rsmd.getColumnName(j);
				String colValue = rs.getString(colName);
				Label label = new Label(j - 1, i, colValue);
				sheet.addCell(label);
			}
			i++;
		}
		book.write();
		book.close();
		pstm.close();
		con.close();
	}

	/**
	 * ����Excel
	 * 
	 * @param response
	 * @param sql
	 * @param sheetTitle
	 *            Excel����
	 * @throws Exception
	 */
	public void exportExcel(HttpServletResponse response, String sql,
			String titles[], String sheetTitle) throws Exception {
		con = ExportExcel.getConn();
		OutputStream os = response.getOutputStream();
		String fs = sheetTitle;
		fs = new String(fs.getBytes("gb2312"), "iso8859-1");
		response.reset();// ��������
		response.setContentType("application/msexcel");// �����������
		response.setHeader("Content-disposition", "attachment; filename=" + fs
				+ ".xls");// �趨����ļ�ͷ
		book = Workbook.createWorkbook(os);

		// ����Excel������
		sheet = book.createSheet(sheetTitle, 0);

		/**
		 * 23��,����ռ��2��
		 */
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
		jxl.write.WritableCellFormat wcfN = new jxl.write.WritableCellFormat(nf);
		wcfN.setBorder(Border.ALL, BorderLineStyle.THIN); // ����
		wcfN.setVerticalAlignment(VerticalAlignment.CENTRE); // ��ֱ����
		wcfN.setAlignment(Alignment.CENTRE);// ˮƽ����
		wcfN.setWrap(true); // �Ƿ���

		// д��Exel������
		importData(sql, titles);
	}

}