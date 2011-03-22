package com.test.news.get;

import java.util.Hashtable;
import java.util.Map;

public class GlobVar {
	// 存放每次捕获新闻的所有图片
	public static Map<String, String> IMG_MAP = new Hashtable<String, String>();
	
	// 在图片的位置放入间隔符号
	public static String IMG_START_ID_STRING = "###IMGIDSTART***";
	public static String IMG_END_ID_STRING = "###IMGIDEND***";

	// 新闻地址
	public static String NEWS_INFO_URL = "http://www.nowscore.com/news/";// 详细信息地址
	public static String NEWS_LIST_URL = "http://www.nowscore.com/news/newslist.aspx?id=1";// 列表地址

	// 新闻列表html截取的起始位置
	public static String NEWS_LIST_HTML_START = "<h2><b class=\"ft1\">文章列表</b></h2>";
	public static String NEWS_LIST_HTML_END = "<div style=\"background-color:#EAE8EA; padding:8px\">";

	// 图片html截取的起始位置
	public static String IMG_TAG_START_STRING = "<img";
	public static String IMG_TAG_END_STRING = "/>";

	// 新闻详细信息html截取的起始位置
	public static String NEWS_INFO_HTML_START = "<h1 id=\"divTitle\"";
	public static String NEWS_INFO_HTML_END = "<div style=\"padding:0 15px\">";
}
