package com.util;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

public class FileUtil {
	public  void input(String str,String filepath) throws IOException {
		System.out.print("====================="+filepath);
		File file = new File(filepath);
		
		if (!file.exists()){
			file.createNewFile();
		}else{
			file.delete();
			file.createNewFile();
		}
						
		  
		try {
			FileWriter fileWriter=new FileWriter(file);
			PrintWriter out = new PrintWriter(new BufferedWriter(fileWriter));
			out.print(str);			
			out.close();

		 } catch (IOException e) {			 
			 e.printStackTrace();
		} 		 
		 
	}
}
