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
	
	public static Integer PAGESIZE_BY_TEN_DATA = 10;//һҳ��ʾ10������
	
	public static Integer PAGESIZE_BY_TWENTY_DATA = 20;//һҳ��ʾ20������
	
	public static Integer PAGESIZE_BY_THIRTY_DATA = 30;//һҳ��ʾ30������
	
	public static Integer PAGESIZE_BY_FORTY_DATA = 40;//һҳ��ʾ40������
	
	public static Integer BRAND = 1; //Ʒ��
	
	public static Integer VIP_GRADE = 2;//VIP�ȼ�
	
	public static Integer TRADE = 3;//��ҵ
	
	public static Integer DO_TYPE = 4;//��������
	
	public static Integer GROUP_GRADE = 5;//VIP�ȼ�
	
	public static Integer DO_OPTERATION_STATE = 6;//ҵ����״̬
	
	public static Integer DO_CLIENT_MANAGER = 7;
	
	public static Integer NETPOINT_TYPE = 90;
	
	/**
	 * ɾ�������ļ�
	 * 
	 * @param fileName
	 *            Ҫɾ�����ļ����ļ���
	 * @return �����ļ�ɾ���ɹ�����true�����򷵻�false
	 */
	public static boolean deleteFile(String fileName) {
		File file = new File(fileName);
		// ����ļ�·������Ӧ���ļ����ڣ�������һ���ļ�����ֱ��ɾ��
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
	 * ͼƬ�ϴ�
	 * @param action
	 * @param pic �ϴ��ļ�
	 * @return
	 * @throws Exception
	 */
	public static String uploadFile(Action action,FormFile pic)throws Exception{
		if(pic!=null){
			String fileName = pic.getFileName();//��ȡͼƬ·��
			if(fileName!=null && !"".equals(fileName)){
				String ext = fileName.substring(fileName.lastIndexOf("."));//��ȡ��׺��
				int index = 0;
				String filePath = System.currentTimeMillis()+index+ext;//�������ͼƬ�洢·��
				index++;
				String path = action.getServlet().getServletContext().getRealPath("admin/upload");//��ȡ�ϴ�ͼƬ����ʵ·��
				InputStream is = null;
				OutputStream os = null;
				is = pic.getInputStream();//��ȡͼƬ
				os = new FileOutputStream(new File(path+File.separator+filePath));//д��ͼƬ�ļ�
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
