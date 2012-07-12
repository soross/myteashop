package com.crm.page;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;



/**
 * @author lxj ��ҳ��ǩ������
 */
public class PageTag extends TagSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 707325614401764821L;
	private Object name;

	public Object getName() {
		return name;
	}

	public void setName(Object name) {
		this.name = name;
	}

	@Override
	public int doAfterBody() throws JspException {
		// TODO �Զ����ɷ������
		return super.doAfterBody();
	}

	@Override
	public int doEndTag() throws JspException {
		// TODO �Զ����ɷ������
		return super.doEndTag();
	}

	@Override
	public int doStartTag() throws JspException {
		if (this.name == null || "".equals(this.name)) {
			throw new JspException("name���Բ���Ϊ��");
		}

		PageUtil pageutil = (PageUtil) this.pageContext.getRequest()
				.getAttribute(String.valueOf(name));

		int currentpage = pageutil.getCurrentpage();
		int totalpage = pageutil.getTotalpage();
		int rscount = pageutil.getRscount();
		String action = pageutil.getAction();

		StringBuffer sbf = new StringBuffer();

		sbf.append("��" + rscount + "����¼  ");

		sbf.append("[��" + currentpage + "/"+totalpage+"ҳ]");

		/*
		 * ����ǵ�ǰҳҳ����1������ʾ��ҳ����һҳ ��ҳ��ֻ��1ҳ������ʾ��ҳ����һҳ��ĩҳ����һҳ
		 */
		if (currentpage != 1 && totalpage != 1) {

			sbf.append("[<a href='" + action + "&currentpage=" + 1 + "'>"
					+ "��ҳ" + "</a>]");
			sbf.append(" ");
			sbf.append("[<a href='" + action + "&currentpage="
					+ (currentpage - 1) + "'>" + "��һҳ</a>]");
		} else {
			sbf.append("[��ҳ]");
			sbf.append("[��һҳ]");
		}
		

		if (totalpage <= 5) { //���ֻ����ҳ,ȫ����ʾ
			for (int i = 1; i <= totalpage; i++) {
				if (currentpage == i) {
					sbf.append("[" + i + "]");
				} else {
					sbf.append("[<a href='" + action + "&currentpage=" + i
							+ "'>" + i + "</a>]");
				}
			}
		} else { //���������ҳ,��̬�ı���ʼҳ�ͽ���ҳ
			int end=5;
			int start=1;
			if(currentpage>=4){
				start=currentpage-2;
			}
			
			
			if(currentpage>=4 &&totalpage>=currentpage+2){
				end=currentpage+2;
			}else if(currentpage>=4&&totalpage<=currentpage+2){
				start=totalpage-4;
				end=totalpage;
			}
			for (int i = start; i <= end; i++) {

					if (currentpage == i) {
						sbf.append("[" + i + "]");
					} else {
						sbf.append("[<a href='" + action + "&currentpage=" + i
								+ "'>" + i + "</a>]");
					}
				}
		}

		/*
		 * ����ǵ�ǰҳҳ������ҳ��������ʾĩҳ����һҳ
		 */
		if (totalpage != 1 && currentpage != totalpage) {
			sbf.append("[<a href='" + action + "&currentpage="
					+ (currentpage + 1) + "'>" + "��һҳ</a>]");
			sbf.append(" ");
			sbf.append("[<a href='" + action + "&currentpage=" + totalpage
					+ "'>" + "ĩҳ" + "</a>]");
		} else {

			sbf.append("[��һҳ]");
			sbf.append("[ĩҳ]");
		}

		try {
			this.pageContext.getOut().write(sbf.toString());// ��ʾ��ҳ������
		} catch (IOException e) {

			e.printStackTrace();
		}

		return super.doStartTag();
	}

	@Override
	public void release() {
		// TODO �Զ����ɷ������
		super.release();
	}

}
