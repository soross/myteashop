
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
 * 存放一些公用的静态信息的常量类
 * 
 * @author oushiyin
 * 
 */
public class ExportExcel {

	private Connection con = null;

	private WritableSheet sheet = null;

	private WritableWorkbook book = null;

	

	/**
	 * 上传单个文件，文件名随机,传入相对路径
	 * 
	 * @param file
	 *            要上传的FormFile
	 * @param request
	 *            request
	 * @param contextPath
	 *            上传到相对路径如：upload
	 * @return 返回随机文件名
	 */
	public static String uploadRnd(FormFile file, HttpServletRequest request,
			String contextPath) throws Exception {
		String path = request.getSession().getServletContext().getRealPath(
				contextPath);// 获取绝对路径
		File fileDir = new File(path);
		if (!fileDir.exists()) {
			fileDir.mkdir();// 创建目录
		}
		String filename = file.getFileName();
		if (filename != null && !"".equals(filename)) {
			filename = filename.trim();
		}
		String extname = filename.substring(filename.lastIndexOf("."));
		String tmpname = System.currentTimeMillis() + new Random().nextInt(100)
				+ extname;// 构造文件名
		InputStream is = null;
		OutputStream os = null;
		try {
			is = file.getInputStream();// 把文件读入
			String compPath = "";
			if (path.endsWith("/") || path.endsWith("\\")) {
				compPath = path + tmpname;// 文件完整路径
			} else {
				compPath = path + File.separator + tmpname;// 文件完整路径
			}
			os = new FileOutputStream(new File(compPath));// 创建文件输出流
			int i = 0;
			byte[] buffer = new byte[10240];
			while ((i = is.read(buffer, 0, buffer.length)) != -1) {
				os.write(buffer, 0, i);// 将文件写入服务器
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
	 * 批量上传文件
	 * 
	 * @param form
	 *            ActionForm
	 * @param request
	 *            request
	 * @param contextPath
	 *            上传目标的上下文路径如：upload
	 * @return 返回更新后的文件名集合 由Map封装后保存至List集合
	 *         旧文件名map.get("old"),新文件名map.get("new")
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
						"<script>alert('文件" + file.getFileName()
								+ "的大小超过5M了!!!');history.go(-1);</script>");
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
	 * 获得连接
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
	 * 载入数据库的数据添加到Excel中
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
	 * 导出Excel
	 * 
	 * @param response
	 * @param sql
	 * @param sheetTitle
	 *            Excel表名
	 * @throws Exception
	 */
	public void exportExcel(HttpServletResponse response, String sql,
			String titles[], String sheetTitle) throws Exception {
		con = ExportExcel.getConn();
		OutputStream os = response.getOutputStream();
		String fs = sheetTitle;
		fs = new String(fs.getBytes("gb2312"), "iso8859-1");
		response.reset();// 清空输出流
		response.setContentType("application/msexcel");// 定义输出类型
		response.setHeader("Content-disposition", "attachment; filename=" + fs
				+ ".xls");// 设定输出文件头
		book = Workbook.createWorkbook(os);

		// 创建Excel工作表
		sheet = book.createSheet(sheetTitle, 0);

		/**
		 * 23列,标题占据2行
		 */
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
		jxl.write.WritableCellFormat wcfN = new jxl.write.WritableCellFormat(nf);
		wcfN.setBorder(Border.ALL, BorderLineStyle.THIN); // 线条
		wcfN.setVerticalAlignment(VerticalAlignment.CENTRE); // 垂直对齐
		wcfN.setAlignment(Alignment.CENTRE);// 水平对齐
		wcfN.setWrap(true); // 是否换行

		// 写入Exel工作表
		importData(sql, titles);
	}

}