package com.crm.tree;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

/**
 * @author wjc ��չʾ
 */
public class TreeTag extends TagSupport {

	private static final long serialVersionUID = 707325614401764821L;
	/**
	 * �����
	 */
	private List list;

	public List getList() {
		return list;
	}

	public void setList(List list) {
		this.list = list;
	}
	
	private String start;
	
	
	public String getStart() {
		return start;
	}

	public void setStart(String start) {
		this.start = start;
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
		if (this.list == null || "".equals(this.list)) {
			throw new JspException("list");
		}

		StringBuffer sbf = new StringBuffer();
		//ƴװhtml
		/**
		<div 
        class="dhtmlxTree" 
        id="treeboxbox_tree" 
        setImagePath="../imgs/" 
        style="width:250px; height:218px;overflow:auto;">
        
	        <ul>
	            <li>Root</li>
	            <ul>
	                <li>Child1
	                <ul>
	                    <li>Child 1-1</li>
	                </ul>
	                </li>
	                <li>Child2</li>
	                <li><b>Bold</b> <i>Italic</i></li>
	            </ul>
	            </li>
	        </ul>
	    </div> 
		  
		 */
		
		
		
		

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
