package com.test.news.get;

import java.util.ArrayList;
import java.util.List;

import com.test.news.vo.NewsTitleBean;
import com.test.util.HtmlUtil;

public class CatchNewsList {

	public List catchNewsList() {
		// ���ŵ�ַ ��ȡ�ַ���
		String url = GlobVar.NEWS_LIST_URL;
		String startStr = GlobVar.NEWS_LIST_HTML_START;
		String endStr = GlobVar.NEWS_LIST_HTML_END;

		// ��ȡȫ��html
		String str = htmlUtil.getHtml(url, startStr, endStr);
		// ��ȡ�б���html
		str = str.substring(str.indexOf("<ul>"), str.indexOf("</ul>"));
		List<NewsTitleBean> newsList = new ArrayList<NewsTitleBean>();
		String hr = "<li style='background-image:none;height:5px;margin-top:5px;border-top:solid 1px #aaa;'></li>";
		// ѭ��ÿ��li ���������<li>
		for (; str.indexOf("<li>") > -1;) {
			// ���˵��ָ���
			if (str.indexOf(hr) < str.indexOf("</li>")) {
				str = str.substring(str.indexOf(hr) + hr.length());
			}

			String tmp = str;
			String li = tmp
					.substring(tmp.indexOf("<li>"), tmp.indexOf("</li>"));

			str = str.substring(str.indexOf("</li>") + 5, str.length());

			// ��װ��titileBean
			NewsTitleBean bean = createNewsListBean(li);
			newsList.add(bean);
			System.out.println(bean.getType() + "==" + bean.getTitleLink()
					+ "===" + bean.getTitle() + "===" + bean.getTitleLink()
					+ "===" + bean.getDate());
		}
		return newsList;
	}

	// ��װ�����ű���bean
	public NewsTitleBean createNewsListBean(String li) {
		NewsTitleBean bean = new NewsTitleBean();

		// ��������
		String startStr = "style=\"color:Blue;\">";
		String endStr = "</a>]";
		String type = li.substring(li.indexOf(startStr) + startStr.length(), li
				.indexOf(endStr));
		bean.setType(type);

		// ��������
		String tmp = li.substring(li.indexOf("href=\"?id2")
				+ "href=\"?id2".length());
		String typeLink = tmp.substring(0, tmp.indexOf("\""));
		bean.setTypeLink(typeLink);

		// <li>[<a href="?id2=109" style="color:Blue;">Ӣ��</a>] &nbsp;<a
		// href="376499.htm" target="_blank" style="">���ǵÿ���ʾ�û������� ���ڵϸ�ȡ����ά˹</a>
		// <span class="date">[03��14�� 16:57 �Ķ���160]</span>
		// </li>
		// ����
		tmp = li.substring(li.indexOf("target=\"_blank\""));
		String title = tmp.substring(tmp.indexOf(">") + 1, tmp.indexOf("</a>"));
		bean.setTitle(title.replace("��", "&nbsp;"));

		// ��ϸ���ŵ�ַ
		tmp = li.substring(li.indexOf("&nbsp;<a href=\"")
				+ "&nbsp;<a href=\"".length());
		String titleLink = tmp.substring(0, tmp.indexOf("\""));
		bean.setTitleLink(titleLink);

		// ����ʱ��
		tmp = li.substring(li.indexOf("<span"), li.indexOf("</span>"));
		String date = tmp.substring(tmp.indexOf("[") + 1, tmp.indexOf("�Ķ�"));
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
