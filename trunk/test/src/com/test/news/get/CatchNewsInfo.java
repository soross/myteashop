package com.test.news.get;

import java.util.Date;

import com.test.news.vo.NewsTitleBean;
import com.test.util.HtmlUtil;

public class CatchNewsInfo {
	public NewsTitleBean catchNewsInfo(NewsTitleBean newsInfo) {
		// 新闻详细信息的截取的字符串
		String startStr = GlobVar.NEWS_INFO_HTML_START;
		String endStr = GlobVar.NEWS_INFO_HTML_END;

		// 获取全部html
		String str = htmlUtil.getHtml(GlobVar.NEWS_INFO_URL
				+ newsInfo.getTitleLink(), startStr, endStr);
		// System.out.println(str);

		// 是否存在图片
		for (int i = 0; str.indexOf(GlobVar.IMG_TAG_START_STRING) > -1; i++) {
			String part1 = str.substring(0, str
					.indexOf(GlobVar.IMG_TAG_START_STRING));
			// System.out.println(part1);
			String tmp = str.substring(str
					.indexOf(GlobVar.IMG_TAG_START_STRING));
			String part2 = tmp.substring(0, tmp
					.indexOf(GlobVar.IMG_TAG_END_STRING));
			// System.out.println(part2);
			String part3 = str.substring(str.substring(
					str.indexOf(GlobVar.IMG_TAG_START_STRING)).indexOf(
					GlobVar.IMG_TAG_END_STRING));

			// System.out.println(part3);
			String rand = new Date().getTime() + "" + i;
			str = part1 + GlobVar.IMG_START_ID_STRING + rand
					+ GlobVar.IMG_END_ID_STRING + part3;
			GlobVar.IMG_MAP.put(String.valueOf(rand), part2);
		}
		newsInfo.setInfo(str);
		return newsInfo;
	}

	public static void main(String[] args) {
		CatchNewsInfo info = new CatchNewsInfo();
		// info.catchNewsInfo("376499.htm");
	}

	private HtmlUtil htmlUtil;

	public HtmlUtil getHtmlUtil() {
		return htmlUtil;
	}

	public void setHtmlUtil(HtmlUtil htmlUtil) {
		this.htmlUtil = htmlUtil;
	}
}
