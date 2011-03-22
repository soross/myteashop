package com.test.news.vo;

public class NewsTitleBean {
	// <li>[<a href="?id2=109" style="color:Blue;">英超</a>] &nbsp;<a
	// href="376499.htm" target="_blank" style="">曼城得狂人示好或换曼奇尼 欲挖迪福取代特维斯</a>
	// <span class="date">[03月14日 16:57 阅读：160]</span>
	// </li>

	// 自定义id
	private int id;
	// 新闻类别
	private String type;
	// 类别链接
	private String typeLink;
	// 新闻标题
	private String title;
	// 新闻详细内容连接
	private String titleLink;
	// 日期
	private String date;
	// 详细信息
	private String info;

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getTypeLink() {
		return typeLink;
	}

	public void setTypeLink(String typeLink) {
		this.typeLink = typeLink;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTitleLink() {
		return titleLink;
	}

	public void setTitleLink(String titleLink) {
		this.titleLink = titleLink;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

}
