package com.test.news.get;

import java.util.Hashtable;
import java.util.Map;

public class GlobVar {
	// ���ÿ�β������ŵ�����ͼƬ
	public static Map<String, String> IMG_MAP = new Hashtable<String, String>();
	
	// ��ͼƬ��λ�÷���������
	public static String IMG_START_ID_STRING = "###IMGIDSTART***";
	public static String IMG_END_ID_STRING = "###IMGIDEND***";

	// ���ŵ�ַ
	public static String NEWS_INFO_URL = "http://www.nowscore.com/news/";// ��ϸ��Ϣ��ַ
	public static String NEWS_LIST_URL = "http://www.nowscore.com/news/newslist.aspx?id=1";// �б��ַ

	// �����б�html��ȡ����ʼλ��
	public static String NEWS_LIST_HTML_START = "<h2><b class=\"ft1\">�����б�</b></h2>";
	public static String NEWS_LIST_HTML_END = "<div style=\"background-color:#EAE8EA; padding:8px\">";

	// ͼƬhtml��ȡ����ʼλ��
	public static String IMG_TAG_START_STRING = "<img";
	public static String IMG_TAG_END_STRING = "/>";

	// ������ϸ��Ϣhtml��ȡ����ʼλ��
	public static String NEWS_INFO_HTML_START = "<h1 id=\"divTitle\"";
	public static String NEWS_INFO_HTML_END = "<div style=\"padding:0 15px\">";
}
