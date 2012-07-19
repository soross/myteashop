package com.crm.tool;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
	public static Date StringToDate_YMDHMS(String date){
		Date newDate = null;
		try {
			newDate = (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(date));
		} catch (ParseException e) {
			newDate = new Date();
			e.printStackTrace();
		}
		return newDate;
	}
	
	public static Date StringToDate_YMD(String date){
		Date newDate = null;
		try {
			newDate = (new SimpleDateFormat("yyyy-MM-dd").parse(date));
		} catch (ParseException e) {
			newDate = new Date();
			e.printStackTrace();
		}
		return newDate;
	}
	
	public static String DateToStringBy_YMD(Date date){
		String str = new SimpleDateFormat("yyyy-MM-dd").format(date);
		return str;
	}
	
	public static String DateToStringBy_YMDHMS(Date date){
		String str = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);
		return str;
	}
}
