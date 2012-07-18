package com.crm.tool;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
	public static Date StringToFullDate(String date){
		Date newDate = null;
		try {
			newDate = (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(date));
		} catch (ParseException e) {
			newDate = new Date();
			e.printStackTrace();
		}
		return newDate;
	}
	
	public static Date StringToShortDate(String date){
		Date newDate = null;
		try {
			newDate = (new SimpleDateFormat("yyyy-MM-dd").parse(date));
		} catch (ParseException e) {
			newDate = new Date();
			e.printStackTrace();
		}
		return newDate;
	}
}
