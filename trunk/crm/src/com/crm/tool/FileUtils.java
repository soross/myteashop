package com.crm.tool;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintStream;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.io.SAXReader;

public class FileUtils {
	/**
	 * һ.��ÿ���̨�û��������Ϣ
	 * 
	 * Java����
	 * 
	 * ��ÿ���̨�û��������Ϣ
	 * 
	 * @return
	 * @throws IOException
	 */
	public static String getInputMessage() throws IOException {
		System.out.println("���������������");
		byte buffer[] = new byte[1024];
		int count = System.in.read(buffer);
		char[] ch = new char[count - 2];// �����λΪ��������ɾȥ��Ҫ
		for (int i = 0; i < count - 2; i++)
			ch[i] = (char) buffer[i];
		String str = new String(ch);
		return str;
	}

	/**
	 * ��ÿ���̨�û��������Ϣ
	 * 
	 * @return
	 * @throws IOException
	 */
	public static String getInputMessage2() throws IOException {
		System.out.println("���������������");
		byte buffer[] = new byte[1024];
		int count = System.in.read(buffer);
		char[] ch = new char[count - 2];// �����λΪ��������ɾȥ��Ҫ
		for (int i = 0; i < count - 2; i++)
			ch[i] = (char) buffer[i];
		String str = new String(ch);
		return str; // ���Է����û��������Ϣ������֮�����ڲ�֧���������룬�д���һ���Ľ���
	}

	/**
	 * ��.�����ļ�
	 * 
	 * 1.���ļ����ķ�ʽ�����ļ�
	 * 
	 * Java���� ���ļ����ķ�ʽ�����ļ�
	 * 
	 * @param src
	 *            �ļ�ԴĿ¼
	 * @param dest
	 *            �ļ�Ŀ��Ŀ¼
	 * @throws IOException
	 */
	public static void copyFile(String src, String dest) throws IOException {
		FileInputStream in = new FileInputStream(src);
		File file = new File(dest);
		if (!file.exists())
			file.createNewFile();
		FileOutputStream out = new FileOutputStream(file);
		int c;
		byte buffer[] = new byte[1024];
		while ((c = in.read(buffer)) != -1) {
			for (int i = 0; i < c; i++)
				out.write(buffer[i]);
		}
		in.close();
		out.close();
	}

	/**
	 * 
	 * ���ļ����ķ�ʽ�����ļ�
	 * 
	 * @param src
	 *            �ļ�ԴĿ¼
	 * @param dest
	 *            �ļ�Ŀ��Ŀ¼
	 * @throws IOException
	 */
	public static void copyFileByStream(String src, String dest) throws IOException {
		FileInputStream in = new FileInputStream(src);
		File file = new File(dest);
		if (!file.exists())
			file.createNewFile();
		FileOutputStream out = new FileOutputStream(file);
		int c;
		byte buffer[] = new byte[1024];
		while ((c = in.read(buffer)) != -1) {
			for (int i = 0; i < c; i++)
				out.write(buffer[i]);
		}
		in.close();
		out.close();
	}// �÷����������ԣ�֧�����Ĵ������ҿ��Ը��ƶ������ͣ�����txt��xml��jpg��doc�ȶ��ָ�ʽ

	/**
	 * ��.д�ļ�
	 * 
	 * Java���� 1.����PrintStreamд�ļ�
	 * 
	 * �ļ����ʾ��
	 */
	public static void PrintStreamDemo() {
		try {
			FileOutputStream out = new FileOutputStream("D:/test.txt");
			PrintStream p = new PrintStream(out);
			for (int i = 0; i < 10; i++)
				p.println("This is " + i + " line");
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 1.����PrintStreamд�ļ�
	 * 
	 * �ļ����ʾ��
	 */
	public static void PrintStream() {
		try {
			FileOutputStream out = new FileOutputStream("D:/test.txt");
			PrintStream p = new PrintStream(out);
			for (int i = 0; i < 10; i++)
				p.println("This is " + i + " line");
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 2.����StringBufferд�ļ�
	 * 
	 * Java����
	 */
	public static void StringBufferDemo() throws IOException {
		File file = new File("/root/sms.log");
		if (!file.exists())
			file.createNewFile();
		FileOutputStream out = new FileOutputStream(file, true);
		for (int i = 0; i < 10000; i++) {
			StringBuffer sb = new StringBuffer();
			sb.append("���ǵ�" + i + "��:ǰ����ܵĸ��ַ�����������,Ϊʲô������ֵ����� ");
			out.write(sb.toString().getBytes("utf-8"));
		}
		out.close();
	}

	public static void StringBuffer() throws IOException {
		File file = new File("/root/sms.log");
		if (!file.exists())
			file.createNewFile();
		FileOutputStream out = new FileOutputStream(file, true);
		for (int i = 0; i < 10000; i++) {
			StringBuffer sb = new StringBuffer();
			sb.append("���ǵ�" + i + "��:ǰ����ܵĸ��ַ�����������,Ϊʲô������ֵ����� ");
			out.write(sb.toString().getBytes("utf-8"));
		}
		out.close();
	}// �÷��������趨ʹ�ú��ֱ��룬��Ч����������⡣

	/**
	 * ��.�ļ�������
	 * 
	 * 
	 * Java���� �ļ�������
	 * 
	 * @param path
	 *            �ļ�Ŀ¼
	 * @param oldname
	 *            ԭ�����ļ���
	 * @param newname
	 *            ���ļ���
	 */
	public static void renameFile(String path, String oldname, String newname) {
		if (!oldname.equals(newname)) {// �µ��ļ�������ǰ�ļ�����ͬʱ,���б�Ҫ����������
			File oldfile = new File(path + "/" + oldname);
			File newfile = new File(path + "/" + newname);
			if (newfile.exists())// ���ڸ�Ŀ¼���Ѿ���һ���ļ������ļ�����ͬ��������������
				System.out.println(newname + "�Ѿ����ڣ�");
			else {
				oldfile.renameTo(newfile);
			}
		}
	}

	/**
	 * �ļ�������
	 * 
	 * @param path
	 *            �ļ�Ŀ¼
	 * @param oldname
	 *            ԭ�����ļ���
	 * @param newname
	 *            ���ļ���
	 * 
	 * public static void renameFile(String path,String oldname,String newname){
	 * if(!oldname.equals(newname)){// �µ��ļ�������ǰ�ļ�����ͬʱ,���б�Ҫ���������� File oldfile=new
	 * File(path+"/"+oldname); File newfile=new File(path+"/"+newname);
	 * if(newfile.exists())// ���ڸ�Ŀ¼���Ѿ���һ���ļ������ļ�����ͬ��������������
	 * System.out.println(newname+"�Ѿ����ڣ�"); else{ oldfile.renameTo(newfile); } } }
	 */
	/**
	 * ��.ת���ļ�Ŀ¼
	 * 
	 * 
	 * ת���ļ�Ŀ¼����ͬ�ڸ����ļ��������ļ��Ǹ��ƺ�����Ŀ¼�����ڸ��ļ�����ת���ļ�Ŀ¼����ת�ƺ�ֻ����Ŀ¼�д��ڸ��ļ���
	 * 
	 * Java����
	 * 
	 * ת���ļ�Ŀ¼
	 * 
	 * @param filename
	 *            �ļ���
	 * @param oldpath
	 *            ��Ŀ¼
	 * @param newpath
	 *            ��Ŀ¼
	 * @param cover
	 *            ����Ŀ¼�´��ں�ת���ļ�������ͬ�ļ������ļ�ʱ���Ƿ񸲸���Ŀ¼���ļ���cover=true���Ḳ��ԭ�ļ������򲻲���
	 */
	public static void changeDirectory(String filename, String oldpath,
			String newpath, boolean cover) {
		if (!oldpath.equals(newpath)) {
			File oldfile = new File(oldpath + "/" + filename);
			File newfile = new File(newpath + "/" + filename);
			if (newfile.exists()) {// ���ڴ�ת��Ŀ¼�£��Ѿ����ڴ�ת���ļ�
				if (cover)// ����
					oldfile.renameTo(newfile);
				else
					System.out.println("����Ŀ¼���Ѿ����ڣ�" + filename);
			} else {
				oldfile.renameTo(newfile);
			}
		}
	}

	/**
	 * ��.���ļ�
	 * 
	 * 1.����FileInputStream��ȡ�ļ�
	 * 
	 * 
	 * Java����
	 * 
	 * ���ļ�
	 * 
	 * @param path
	 * @return
	 * @throws IOException
	 */
	public static String FileInputStream(String path) throws IOException {
		File file = new File(path);
		if (!file.exists() || file.isDirectory())
			throw new FileNotFoundException();
		FileInputStream fis = new FileInputStream(file);
		byte[] buf = new byte[1024];
		StringBuffer sb = new StringBuffer();
		while ((fis.read(buf)) != -1) {
			sb.append(new String(buf));
			buf = new byte[1024];// �������ɣ�������ϴζ�ȡ�������ظ�
		}
		return sb.toString();
	}

	/**
	 * 2.����BufferedReader��ȡ
	 * 
	 * ��IO����������BufferedReader��BufferedWriterЧ�ʻ����һ��
	 * 
	 * Java����
	 * 
	 * ���ļ�
	 * 
	 * @param path
	 * @return
	 * @throws IOException
	 */
	public static String BufferedReader(String path) throws IOException {
		File file = new File(path);
		if (!file.exists() || file.isDirectory())
			throw new FileNotFoundException();
		BufferedReader br = new BufferedReader(new FileReader(file));
		String temp = null;
		StringBuffer sb = new StringBuffer();
		temp = br.readLine();
		while (temp != null) {
			sb.append(temp + " ");
			temp = br.readLine();
		}
		return sb.toString();
	}

	/**
	 * 3.����dom4j��ȡxml�ļ�
	 * 
	 * Java����
	 * 
	 * ��Ŀ¼�ж�ȡxml�ļ�
	 * 
	 * @param path
	 *            �ļ�Ŀ¼
	 * @return
	 * @throws DocumentException
	 * @throws IOException
	 */
	public static Document readXml(String path) throws DocumentException, IOException {
		File file = new File(path);
		BufferedReader bufferedreader = new BufferedReader(new FileReader(file));
		SAXReader saxreader = new SAXReader();
		Document document = (Document) saxreader.read(bufferedreader);
		bufferedreader.close();
		return document;
	}

	/**
	 * ��.�����ļ�(�ļ���)
	 * 
	 * 1.�����ļ��� Java����
	 * 
	 * �����ļ���
	 * 
	 * @param path
	 *            Ŀ¼
	 */
	public static void createDir(String path) {
		File dir = new File(path);
		if (!dir.exists())
			dir.mkdir();
	}

	/**
	 * 2.�������ļ�
	 * 
	 * �������ļ�
	 * 
	 * @param path
	 *            Ŀ¼
	 * @param filename
	 *            �ļ���
	 * @throws IOException
	 */
	public static void createFile(String path, String filename) throws IOException {
		File file = new File(path + "/" + filename);
		if (!file.exists())
			file.createNewFile();
	}

	/**
	 * ��.ɾ���ļ�(Ŀ¼)
	 * 
	 * 1.ɾ���ļ� Java����
	 * 
	 * ɾ���ļ�
	 * 
	 * @param path
	 *            Ŀ¼
	 * @param filename
	 *            �ļ���
	 */
	public static void delFile(String path, String filename) {
		File file = new File(path + "/" + filename);
		if (file.exists() && file.isFile())
			file.delete();
	}

	/**
	 * 2.ɾ��Ŀ¼ Ҫ����File���delete()����ɾ��Ŀ¼ʱ�� ���뱣֤��Ŀ¼��û���ļ�������Ŀ¼������ɾ��ʧ�ܣ�
	 * �����ʵ��Ӧ���У�����Ҫɾ��Ŀ¼���������õݹ�ɾ����Ŀ¼�µ�������Ŀ¼���ļ���Ȼ����ɾ����Ŀ¼��
	 * 
	 * 
	 * �ݹ�ɾ���ļ���
	 * 
	 * @param path
	 */
	public static void delDir(String path) {
		File dir = new File(path);
		if (dir.exists()) {
			File[] tmp = dir.listFiles();
			for (int i = 0; i < tmp.length; i++) {
				if (tmp[i].isDirectory()) {
					delDir(path + "/" + tmp[i].getName());
				} else {
					tmp[i].delete();
				}
			}
			dir.delete();
		}
	}

}
