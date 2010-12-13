package com.test.util;

/**
 * @(#) ZipFile.java
 *
 * Copyright 2004 Opensource Develop Team. All rights reserved.
 */

import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.CRC32;
import java.util.zip.CheckedOutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public class ZipUtil {

	public void toZipFile(String filePath, String outFile) {
		ArrayList fileNames = new ArrayList(); // 存放文件名,并非含有路径的名字
		ArrayList files = new ArrayList(); // 存放文件对象

		try {
			File rootFile = new File(filePath);
			listFile(rootFile, fileNames, files);
			if (files != null && files.size() > 0) {
				//设置输出压缩文件
				FileOutputStream fileOut = new FileOutputStream(outFile);
				CheckedOutputStream ch=new CheckedOutputStream(fileOut,new CRC32());
				BufferedOutputStream bout=new BufferedOutputStream(ch);
				ZipOutputStream outputStream = new ZipOutputStream(bout);

				for (int loop = 0; loop < files.size(); loop++) {
					FileInputStream fileIn = new FileInputStream((File) files
							.get(loop));
					InputStreamReader inReader=new InputStreamReader(fileIn,"ISO8859_1");
					BufferedReader in=new BufferedReader(inReader);
					
					outputStream.putNextEntry(new ZipEntry((String) fileNames
							.get(loop)));
					
					int c;
					while ((c=in.read())!= -1) {
						outputStream.write(c);
					}
					fileIn.close();
					in.close();
					outputStream.closeEntry();
					
				}
				// 删除原有的文件
				for (int i = 0; i < files.size(); i++) {
					File file = (File) files.get(i);
					file.delete();
				}
				outputStream.close();
			}
		} catch (IOException ioe) {
			ioe.printStackTrace();
		}
	}

	public static void main(String[] args) {
		ZipUtil zip = new ZipUtil();
		zip.toZipFile("D:\\tomcat\\webapps\\hfmpfzGs\\client\\exp\\",
				"D:\\tomcat\\webapps\\hfmpfzGs\\client\\exp\\字典文件.zip");
	}

	static void listFile(File parentFile, List nameList, List fileList) {
		if (parentFile.isDirectory()) {
			File[] files = parentFile.listFiles();
			// 查询目录下所有的csv文件
			for (int loop = 0; loop < files.length; loop++) {
				File file = files[loop];
				String fileType = file.getName().toLowerCase();
				if (fileType.indexOf(".csv") > -1) {
					fileList.add(file);
					nameList.add(file.getName());
				}
			}
		}
	}
}