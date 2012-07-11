package com.crm.pub;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

import org.apache.struts.action.Action;
import org.apache.struts.upload.FormFile;

public class GlobVar {
	
	
	public static Integer PAGESIZE_BY_FIVE = 5;
	
	public static Integer PAGESIZE_BY_TEN_DATA = 10;//一页显示10条数据
	
	public static Integer PAGESIZE_BY_TWENTY_DATA = 20;//一页显示20条数据
	
	public static Integer PAGESIZE_BY_THIRTY_DATA = 30;//一页显示30条数据
	
	public static Integer PAGESIZE_BY_FORTY_DATA = 40;//一页显示40条数据
	
	public static Integer BRAND = 1; //品牌
	
	public static Integer VIP_GRADE = 2;//VIP等级
	
	public static Integer TRADE = 3;//行业
	
	public static Integer DO_TYPE = 4;//操作类型
	
	public static Integer GROUP_GRADE = 5;//VIP等级
	
	public static Integer DO_OPTERATION_STATE = 6;//业务处理状态
	
	public static Integer DO_CLIENT_MANAGER = 7;
	
	public static Integer NETPOINT_TYPE = 90;
	
	/**
	 * 删除单个文件
	 * 
	 * @param fileName
	 *            要删除的文件的文件名
	 * @return 单个文件删除成功返回true，否则返回false
	 */
	public static boolean deleteFile(String fileName) {
		File file = new File(fileName);
		// 如果文件路径所对应的文件存在，并且是一个文件，则直接删除
		if (file.exists() && file.isFile()) {
			if (file.delete()) {
				return true;
			} else {
				return false;
			}
		} else {
			return false;
		}
	}
	
		
	/**
	 * 图片上传
	 * @param action
	 * @param pic 上传文件
	 * @return
	 * @throws Exception
	 */
	public static String uploadFile(Action action,FormFile pic)throws Exception{
		if(pic!=null){
			String fileName = pic.getFileName();//获取图片路径
			if(fileName!=null && !"".equals(fileName)){
				String ext = fileName.substring(fileName.lastIndexOf("."));//截取后缀名
				int index = 0;
				String filePath = System.currentTimeMillis()+index+ext;//随机生成图片存储路径
				index++;
				String path = action.getServlet().getServletContext().getRealPath("admin/upload");//获取上传图片的真实路径
				InputStream is = null;
				OutputStream os = null;
				is = pic.getInputStream();//读取图片
				os = new FileOutputStream(new File(path+File.separator+filePath));//写入图片文件
				byte[] buffer = new byte[10240];
				int len = 0;
				while((len = is.read(buffer, 0, buffer.length))!=-1){
					os.write(buffer, 0, len);
					os.flush();
				}
				if(is!=null)is.close();
				if(os!=null)os.close();
				return filePath;
			}
		}
		return null;	
	}
	
	public static String getDate(){
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		sdf.setTimeZone(TimeZone.getTimeZone("GMT+8"));
		String time =sdf.format(date);
		return time;
	}
	
}
