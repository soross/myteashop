package com.test.news.get;

import java.util.ArrayList;
import java.util.List;

import com.test.news.vo.NewsTitleBean;
import com.test.util.HtmlUtil;

public class CatchNewsList {

	public List catchNewsList() {
		// 新闻地址 截取字符串
		String url = GlobVar.NEWS_LIST_URL;
		String startStr = GlobVar.NEWS_LIST_HTML_START;
		String endStr = GlobVar.NEWS_LIST_HTML_END;

		// 获取全部html
		String str = htmlUtil.getHtml(url, startStr, endStr);
		// 截取列表部分html
		str = str.substring(str.indexOf("<ul>"), str.indexOf("</ul>"));
		List<NewsTitleBean> newsList = new ArrayList<NewsTitleBean>();
		String hr = "<li style='background-image:none;height:5px;margin-top:5px;border-top:solid 1px #aaa;'></li>";
		// 循环每个li 如果还存在<li>
		for (; str.indexOf("<li>") > -1;) {
			// 过滤调分割线
			if (str.indexOf(hr) < str.indexOf("</li>")) {
				str = str.substring(str.indexOf(hr) + hr.length());
			}

			String tmp = str;
			String li = tmp
					.substring(tmp.indexOf("<li>"), tmp.indexOf("</li>"));

			str = str.substring(str.indexOf("</li>") + 5, str.length());

			// 封装成titileBean
			NewsTitleBean bean = createNewsListBean(li);
			newsList.add(bean);
			System.out.println(bean.getType() + "==" + bean.getTitleLink()
					+ "===" + bean.getTitle() + "===" + bean.getTitleLink()
					+ "===" + bean.getDate());
		}
		return newsList;
	}

	// 封装成新闻标题bean
	public NewsTitleBean createNewsListBean(String li) {
		NewsTitleBean bean = new NewsTitleBean();

		// 新闻类型
		String startStr = "style=\"color:Blue;\">";
		String endStr = "</a>]";
		String type = li.substring(li.indexOf(startStr) + startStr.length(), li
				.indexOf(endStr));
		bean.setType(type);

		// 类型连接
		String tmp = li.substring(li.indexOf("href=\"?id2")
				+ "href=\"?id2".length());
		String typeLink = tmp.substring(0, tmp.indexOf("\""));
		bean.setTypeLink(typeLink);

		// <li>[<a href="?id2=109" style="color:Blue;">英超</a>] &nbsp;<a
		// href="376499.htm" target="_blank" style="">曼城得狂人示好或换曼奇尼 欲挖迪福取代特维斯</a>
		// <span class="date">[03月14日 16:57 阅读：160]</span>
		// </li>
		// 标题
		tmp = li.substring(li.indexOf("target=\"_blank\""));
		String title = tmp.substring(tmp.indexOf(">") + 1, tmp.indexOf("</a>"));
		bean.setTitle(title.replace("？", "&nbsp;"));

		// 详细新闻地址
		tmp = li.substring(li.indexOf("&nbsp;<a href=\"")
				+ "&nbsp;<a href=\"".length());
		String titleLink = tmp.substring(0, tmp.indexOf("\""));
		bean.setTitleLink(titleLink);

		// 新闻时间
		tmp = li.substring(li.indexOf("<span"), li.indexOf("</span>"));
		String date = tmp.substring(tmp.indexOf("[") + 1, tmp.indexOf("阅读"));
		bean.setDate(date.trim());

		return bean;
	}

	public static void main(String[] args) {
		CatchNewsList l = new CatchNewsList();
		l.catchNewsList();
	}

	private HtmlUtil htmlUtil;

	public HtmlUtil getHtmlUtil() {
		return htmlUtil;
	}

	public void setHtmlUtil(HtmlUtil htmlUtil) {
		this.htmlUtil = htmlUtil;
	}
}
