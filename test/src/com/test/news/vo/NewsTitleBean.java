package com.test.news.vo;

public class NewsTitleBean {
	// <li>[<a href="?id2=109" style="color:Blue;">Ӣ��</a>] &nbsp;<a
	// href="376499.htm" target="_blank" style="">���ǵÿ���ʾ�û������� ���ڵϸ�ȡ����ά˹</a>
	// <span class="date">[03��14�� 16:57 �Ķ���160]</span>
	// </li>

	// �Զ���id
	private int id;
	// �������
	private String type;
	// �������
	private String typeLink;
	// ���ű���
	private String title;
	// ������ϸ��������
	private String titleLink;
	// ����
	private String date;
	// ��ϸ��Ϣ
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
