package com.util;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;


public class AdminXml{
	
	Document doc=null;
	Element root=null;
	String filename=null;
	public AdminXml(String filename){
		this.filename=filename;
		SAXReader saxReader=new SAXReader();
		try {
			 doc=saxReader.read(new File(filename));
			 root=doc.getRootElement();
		} catch (DocumentException e) {
			System.out.print(e.getMessage());
		}
	}
	
	
	//添加管理员
	public Boolean addUser(String s){
		Boolean flag=false;
		Element user=root.addElement("user");
		user.addAttribute("id", userbean.getSuser());
		Element sname=user.addElement("sname");
		sname.setText(userbean.getSname());
		Element spwd=user.addElement("spassword");
		spwd.setText(userbean.getSpwd());
		Element ssex=user.addElement("ssex");
		ssex.setText(userbean.getSsex());
		Element dbirth=user.addElement("dbirth");
		dbirth.setText(userbean.getDbirth());
		Element semail=user.addElement("semail");
		semail.setText(userbean.getSemail());
		Element sphone=user.addElement("sphone");
		sphone.setText(userbean.getSphone());
		Element saddress=user.addElement("saddress");
		saddress.setText(userbean.getSaddress());
		Element scode=user.addElement("scode");
		scode.setText(userbean.getScode());
		Element nlevel=user.addElement("nlevel");
		nlevel.setText("普通管理员");
		Element dregdate=user.addElement("dregdate");
		dregdate.setText(userbean.getDregdate());
		Element dlastdate=user.addElement("dlastdate");
		dlastdate.setText("");
		Element nlogin=user.addElement("nlogin");
		nlogin.setText("0");
		flag=writeToFile(doc);
		return flag;
	}
	
	���������ļ�
	public Boolean writeToFile(Document doc){
		Boolean flag=false;
		
		OutputFormat opf=OutputFormat.createPrettyPrint();
		opf.setEncoding("GBK");
		opf.setIndent("\t");
		try {
			XMLWriter writer=new XMLWriter(new FileOutputStream(filename),opf);
			writer.write(doc);
			flag=true;
			
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			flag=false;
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			flag=false;
		} catch (IOException e) {
			e.printStackTrace();
			flag=false;
		}
		return flag;
	}

}
