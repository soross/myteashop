package com.test.news.get;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.test.util.HtmlUtil;

public class CatchNewsInfo {
	private String url;

	public CatchNewsInfo(String url) {
		this.url = url;
	}

	public String CatchNewsInfo() {
		String startStr = GlobVar.NEWS_INFO_HTML_START;
		String endStr = GlobVar.NEWS_INFO_HTML_END;
		HtmlUtil util = new HtmlUtil();
		String str = util
				.getHtml(GlobVar.NEWS_INFO_URL + url, startStr, endStr);
		System.out.println(str);

		for (int i = 0; str.indexOf(GlobVar.IMG_TAG_START_STRING) > -1; i++) {
			String part1 = str.substring(0, str
					.indexOf(GlobVar.IMG_TAG_START_STRING));
			System.out.println(part1);
			String tmp = str.substring(str
					.indexOf(GlobVar.IMG_TAG_START_STRING));
			String part2 = tmp.substring(0, tmp
					.indexOf(GlobVar.IMG_TAG_END_STRING));
			System.out.println(part2);
			String part3 = str.substring(str.substring(
					str.indexOf(GlobVar.IMG_TAG_START_STRING)).indexOf(
					GlobVar.IMG_TAG_END_STRING));

			System.out.println(part3);
			long rand = new Date().getTime() + i;
			str = part1 + GlobVar.IMG_START_ID_STRING + rand
					+ GlobVar.IMG_END_ID_STRING + part3;
			GlobVar.IMG_MAP.put(String.valueOf(rand), part2);
		}
		return str;
	}

	public static void main(String[] args) {
		CatchNewsInfo info = new CatchNewsInfo("376499.htm");
		info.CatchNewsInfo();
	}
}
