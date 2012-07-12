package com.crm.page;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;



/**
 * @author lxj 分页标签处理类
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
		// TODO 自动生成方法存根
		return super.doAfterBody();
	}

	@Override
	public int doEndTag() throws JspException {
		// TODO 自动生成方法存根
		return super.doEndTag();
	}

	@Override
	public int doStartTag() throws JspException {
		if (this.name == null || "".equals(this.name)) {
			throw new JspException("name属性不能为空");
		}

		PageUtil pageutil = (PageUtil) this.pageContext.getRequest()
				.getAttribute(String.valueOf(name));

		int currentpage = pageutil.getCurrentpage();
		int totalpage = pageutil.getTotalpage();
		int rscount = pageutil.getRscount();
		String action = pageutil.getAction();

		StringBuffer sbf = new StringBuffer();

		sbf.append("共" + rscount + "条记录  ");

		sbf.append("[第" + currentpage + "/"+totalpage+"页]");

		/*
		 * 如果是当前页页码是1，则不显示首页，上一页 总页数只有1页，则不显示首页，上一页，末页，下一页
		 */
		if (currentpage != 1 && totalpage != 1) {

			sbf.append("[<a href='" + action + "&currentpage=" + 1 + "'>"
					+ "首页" + "</a>]");
			sbf.append(" ");
			sbf.append("[<a href='" + action + "&currentpage="
					+ (currentpage - 1) + "'>" + "上一页</a>]");
		} else {
			sbf.append("[首页]");
			sbf.append("[上一页]");
		}
		

		if (totalpage <= 5) { //如果只有五页,全部显示
			for (int i = 1; i <= totalpage; i++) {
				if (currentpage == i) {
					sbf.append("[" + i + "]");
				} else {
					sbf.append("[<a href='" + action + "&currentpage=" + i
							+ "'>" + i + "</a>]");
				}
			}
		} else { //如果超过五页,动态改变起始页和结束页
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
		 * 如果是当前页页码是总页数，则不显示末页和下一页
		 */
		if (totalpage != 1 && currentpage != totalpage) {
			sbf.append("[<a href='" + action + "&currentpage="
					+ (currentpage + 1) + "'>" + "下一页</a>]");
			sbf.append(" ");
			sbf.append("[<a href='" + action + "&currentpage=" + totalpage
					+ "'>" + "末页" + "</a>]");
		} else {

			sbf.append("[下一页]");
			sbf.append("[末页]");
		}

		try {
			this.pageContext.getOut().write(sbf.toString());// 显示分页工具栏
		} catch (IOException e) {

			e.printStackTrace();
		}

		return super.doStartTag();
	}

	@Override
	public void release() {
		// TODO 自动生成方法存根
		super.release();
	}

}
