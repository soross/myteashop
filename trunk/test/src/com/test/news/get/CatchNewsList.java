package com.test.news.get;

import java.util.ArrayList;
import java.util.List;

import com.test.news.vo.NewsListBean;
import com.test.util.HtmlUtil;

public class CatchNewsList {
	public List CatchNewsList() {
		String url = GlobVar.NEWS_LIST_URL;
		String startStr = GlobVar.NEWS_LIST_HTML_START;
		String endStr = GlobVar.NEWS_LIST_HTML_END;
		HtmlUtil util = new HtmlUtil();

		String str = util.getHtml(url, startStr, endStr);
		str = str.substring(str.indexOf("<ul>"), str.indexOf("</ul>"));
		List<NewsListBean> newsList = new ArrayList<NewsListBean>();
		String hr = "<li style='background-image:none;height:5px;margin-top:5px;border-top:solid 1px #aaa;'></li>";
		for (; str.indexOf("<li>") > -1;) {
			if (str.indexOf(hr) < str.indexOf("</li>")) {
				str = str.substring(str.indexOf(hr) + hr.length());
			}

			String tmp = str;
			String li = tmp
					.substring(tmp.indexOf("<li>"), tmp.indexOf("</li>"));

			str = str.substring(str.indexOf("</li>") + 5, str.length());
			NewsListBean bean = createNewsListBean(li);
			newsList.add(bean);
			System.out.println(bean.getType() + "==" + bean.getTitleLink()
					+ "===" + bean.getTitle() + "===" + bean.getTitleLink()
					+ "===" + bean.getDate());
		}
		return newsList;
	}

	public NewsListBean createNewsListBean(String li) {
		NewsListBean bean = new NewsListBean();

		String startStr = "style=\"color:Blue;\">";
		String endStr = "</a>]";
		String type = li.substring(li.indexOf(startStr) + startStr.length(), li
				.indexOf(endStr));
		bean.setType(type);

		String tmp = li.substring(li.indexOf("href=\"?id2")
				+ "href=\"?id2".length());
		String typeLink = tmp.substring(0, tmp.indexOf("\""));
		bean.setTypeLink(typeLink);

		// <li>[<a href="?id2=109" style="color:Blue;">英超</a>] &nbsp;<a
		// href="376499.htm" target="_blank" style="">曼城得狂人示好或换曼奇尼 欲挖迪福取代特维斯</a>
		// <span class="date">[03月14日 16:57 阅读：160]</span>
		// </li>
		tmp = li.substring(li.indexOf("target=\"_blank\""));
		String title = tmp.substring(tmp.indexOf(">") + 1, tmp.indexOf("</a>"));
		bean.setTitle(title.replace("？", "&nbsp;"));

		tmp = li.substring(li.indexOf("&nbsp;<a href=\"")
				+ "&nbsp;<a href=\"".length());
		String titleLink = tmp.substring(0, tmp.indexOf("\""));
		bean.setTitleLink(titleLink);

		tmp = li.substring(li.indexOf("<span"), li.indexOf("</span>"));
		String date = tmp.substring(tmp.indexOf("[") + 1, tmp.indexOf("阅读"));
		bean.setDate(date.trim());

		return bean;
	}

	public static void main(String[] args) {
		CatchNewsList l = new CatchNewsList();
		l.CatchNewsList();
	}
}
