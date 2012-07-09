package com.crm.page;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;

/**
 * @author lxj ��ҳ������
 */
public class PageUtil {

	private int currentpage = 1; // ��ǰҳ

	private int pagesize = 2; // ÿҳ��ʾ��¼��

	private int rscount = 0; // �ܼ�¼

	private int totalpage = 0; // ��ҳ��

	private HttpServletRequest request;

	public PageUtil(HttpServletRequest request,int rscount,int pagesize) {
		this.request = request;
		this.rscount=rscount;
		this.pagesize=pagesize;
	}

	public int getTotalpage() {
		if (rscount == 0) {
			totalpage = 1;
		} else {

			totalpage = (rscount - 1) / pagesize + 1;
		}

		return totalpage;
	}

	public void setTotalpage(int totalpage) {
		this.totalpage = totalpage;
	}

	public int getCurrentpage() { // ��õ�ǰҳ
		String current=this.request.getParameter("currentpage");
		if(current!=null){
			 
			try {

				 if (Integer.parseInt(current) < 1) { // �����ǰҳ��С��1,����1
					this.currentpage = 1;
				} else if (Integer.parseInt(current) > getTotalpage()) {// �����ǰҳ������ҳ��,�������ҳ��
					this.currentpage = getTotalpage();
				}else {
					this.currentpage=Integer.parseInt(this.request.getParameter("currentpage"));
				}
			} catch (Exception e) {
				this.currentpage = 1;
			}
		}
		

		return currentpage;
	}
	
	public String getAction() { //��ȡ���ӵ�ַ
		String url=request.getRequestURI();
		if(url.indexOf("?")==-1){
			url=url+"?";
		}
		String allparam="";
		Enumeration  param=this.request.getParameterNames();
		while(param.hasMoreElements()){
			String name=param.nextElement().toString();
			String value=this.request.getParameter(name);
			if(name!=null&&!"".equals(value)&&!name.equals("currentpage")){
				if("".equals(allparam)){
					allparam=allparam+name+"="+value;
				}else{
					allparam=allparam+"&"+name+"="+value;
				}
			}
			
		}
		
		url=url+allparam;
		
		return url;
	}
	
	public int pastart(){ //������ʼ��		
		return (this.getCurrentpage()-1)*this.getPagesize();
		
	}
	
	public int paend(){ //���������
		int paend=pagesize;
		paend=getCurrentpage()*pagesize;
		return paend;	
	}

	public void setCurrentpage(int currentpage) {
		this.currentpage = currentpage;
	}

	public int getRscount() {
		return rscount;
	}

	public void setRscount(int rscount) {
		this.rscount = rscount;
	}

	public int getPagesize() {
		return pagesize;
	}

	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}

}
