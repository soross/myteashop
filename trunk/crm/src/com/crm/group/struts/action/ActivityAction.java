/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.crm.group.struts.action;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.crm.group.excel.ExportExcel;
import com.crm.group.po.ClubActivity;
import com.crm.group.po.TFees;
import com.crm.group.service.dao.inf.ActServiceDao;
import com.crm.group.struts.form.ActivityForm;
import com.crm.group.struts.form.GroupForm;
import com.crm.page.PageUtil;
import com.crm.pub.GlobVar;
import com.crm.pub.po.TData;
import com.crm.pub.po.TUser;

/** 
 * MyEclipse Struts
 * Creation date: 11-03-2009
 * 
 * XDoclet definition:
 * @struts.action path="admin/activity" name="activityForm" input="/form/activity.jsp" parameter="task" scope="request" validate="true"
 */
public class ActivityAction extends DispatchAction {
	private ActServiceDao actServiceDao;

	/** 
	 * 显示活动界面
	 */
	
	public ActionForward showActivity(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		ActivityForm activityForm = (ActivityForm) form;// TODO Auto-generated method stub
		ClubActivity activity=new ClubActivity();
		int rcount = actServiceDao.getCount(activity, "0", "0");
		PageUtil pageUtil = new PageUtil(request,rcount,GlobVar.PAGESIZE_BY_TEN_DATA);
		List actlist=actServiceDao.searchACt(activity, pageUtil, "0", "0");
		
		request.setAttribute("pageUtil", pageUtil);
        request.setAttribute("actlist", actlist);
       
		return new ActionForward("/admin/club/showactivity.jsp");
		
	}
	
	/** 
	 * 查询活动
	 */
	
	public ActionForward searchAct(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		ActivityForm activityForm = (ActivityForm) form;// TODO Auto-generated method stub
		ClubActivity activity=new ClubActivity();
		String start="0";
		String end="0";
		
		if(!"".equals(activityForm.getActAddr())&&null!=activityForm.getActAddr()){
			
			activity.setActAddr(activityForm.getActAddr());
			
		}
        if(!"".equals(activityForm.getStartTime())&&null!=activityForm.getStartTime()){
			start=activityForm.getStartTime();
		}
        if(!"".equals(activityForm.getEndTime())&&null!=activityForm.getEndTime()){
        	
			end=activityForm.getEndTime();
		}
        
		int rcount = actServiceDao.getCount(activity, start, end);
		PageUtil pageUtil = new PageUtil(request,rcount,GlobVar.PAGESIZE_BY_TEN_DATA);
		List actlist=actServiceDao.searchACt(activity, pageUtil, start, end);
		request.setAttribute("pageUtil", pageUtil);
        request.setAttribute("actlist", actlist);
		return new ActionForward("/admin/club/showactivity.jsp");
		
	}
	/** 
	 * 添加活动界面
	 */
	
	public ActionForward addJsp(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		ActivityForm activityForm = (ActivityForm) form;// TODO Auto-generated method stub
		
		return new ActionForward("/admin/club/addactivity.jsp");
		
	}
	/** 
	 * 添加活动
	 * @throws IOException 
	 * @throws ParseException 
	 */
	
	public ActionForward addAct(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws IOException, ParseException {
		ActivityForm activityForm = (ActivityForm) form;// TODO Auto-generated method stub
		ClubActivity activity=new ClubActivity();
		 String fname[]=request.getParameterValues("feename");
         String bfee[]=request.getParameterValues("bfee");
         String ffee[]=request.getParameterValues("ffee");
         activity.setActAddr(activityForm.getActAddr());
         SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
 	     Date da=sdf.parse(activityForm.getActTime());
         activity.setActTime(da);
         activity.setActContent(activityForm.getActContent());
         activity.setOrganizer(activityForm.getOrganizer());
         activity.setFactCount(new Long(activityForm.getFactCount()));
         activity.setIntendCount(new Long(activityForm.getIntendCount()));
         activity.setIscheck("0");
         long bfees=0;
         long ffees=0;
         if(null!=fname){
         for(int i=0;i<fname.length;i++){
        	 TFees fees=new TFees();
        	 fees.setFeesName(fname[i]);
        	 fees.setBudgFee(new Long(bfee[i]));
        	 bfees+=new Long(bfee[i]);
        	 fees.setFactFee(new Long(ffee[i]));
        	 ffees+=new Long(ffee[i]);
        	 fees.setActivity(activity);
        	 activity.getFee().add(fees);
         }
         }
         activity.setBudgFees(bfees);
         activity.setFactFees(ffees);
         actServiceDao.addAct(activity);
		response.getWriter().print("<script>alert('添加成功！');location.href='"
							+ request.getContextPath()
							+ "/admin/activity.do?task=showActivity';</script>");
		return null;
		
	}
	/** 
	 * 修改活动界面
	 * @throws InvocationTargetException 
	 * @throws IllegalAccessException 
	 */
	
	public ActionForward updateJsp(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws IllegalAccessException, InvocationTargetException {
		ActivityForm activityForm = (ActivityForm) form;// TODO Auto-generated method stub
		String id=request.getParameter("id");
		ClubActivity ac=new ClubActivity();
		ac=actServiceDao.getAct(new Long(id));
		BeanUtils.copyProperties(activityForm, ac);
		request.setAttribute("feeset",ac.getFee());
		return new ActionForward("/admin/club/updateactivity.jsp");
		
	}
	/** 
	 * 修改活动
	 * @throws IOException 
	 * @throws InvocationTargetException 
	 * @throws IllegalAccessException 
	 */
	
	public ActionForward updateAct(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception{
		ActivityForm activityForm = (ActivityForm) form;// TODO Auto-generated method stub
		ClubActivity activity=new ClubActivity();
		activity=actServiceDao.getAct(activityForm.getActId());
		 String fname[]=request.getParameterValues("feename");
         String bfee[]=request.getParameterValues("bfee");
         String ffee[]=request.getParameterValues("ffee");
         activity.setActAddr(activityForm.getActAddr());
         SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
 	     Date da=sdf.parse(activityForm.getActTime());
         activity.setActTime(da);
         activity.setActContent(activityForm.getActContent());
         activity.setOrganizer(activityForm.getOrganizer());
         activity.setFactCount(new Long(activityForm.getFactCount()));
         activity.setIntendCount(new Long(activityForm.getIntendCount()));
         activity.setIscheck("0");
         long bfees=0;
         long ffees=0;
         Set<TFees> fee=activity.getFee();
        Iterator<TFees> iter=fee.iterator();
        while(iter.hasNext()){
        	TFees fe=(TFees)iter.next();
        	actServiceDao.deleteFee(fe);
        }
         if(null!=fname){
         for(int i=0;i<fname.length;i++){
        	 TFees fees=new TFees();
        	 fees.setFeesName(fname[i]);
        	 fees.setBudgFee(new Long(bfee[i]));
        	 bfees+=new Long(bfee[i]);
        	 fees.setFactFee(new Long(ffee[i]));
        	 ffees+=new Long(ffee[i]);
        	 fees.setActivity(activity);
        	 activity.getFee().add(fees);
         }
         }
         activity.setBudgFees(bfees);
         activity.setFactFees(ffees);
		
		actServiceDao.updateAct(activity);
		response.getWriter().print("<script>alert('修改成功！');location.href='"
				+ request.getContextPath()
				+ "/admin/activity.do?task=showActivity';</script>");
     return null;
		
	}
	/** 
	 * 删除活动
	 */
	
	public ActionForward deleteAct(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		ActivityForm activityForm = (ActivityForm) form;// TODO Auto-generated method stub
		String id=request.getParameter("id");
		ClubActivity ac=new ClubActivity();
		ac.setActId(new Long(id));
		actServiceDao.deleteAct(ac);
		ClubActivity activity=new ClubActivity();
		int rcount = actServiceDao.getCount(activity, "0", "0");
		PageUtil pageUtil = new PageUtil(request,rcount,GlobVar.PAGESIZE_BY_TEN_DATA);
		List actlist=actServiceDao.searchACt(activity, pageUtil, "0", "0");
		request.setAttribute("pageUtil", pageUtil);
        request.setAttribute("actlist", actlist);
		return new ActionForward("/admin/club/showactivity.jsp");
		
	}
	/** 
	 * 审核活动界面
	 * @throws InvocationTargetException 
	 * @throws IllegalAccessException 
	 * @throws IOException 
	 */
	
	public ActionForward checkJsp(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws IllegalAccessException, InvocationTargetException, IOException {
		ActivityForm activityForm = (ActivityForm) form;// TODO Auto-generated method stub
		String id=request.getParameter("id");
		ClubActivity ac=new ClubActivity();
		ac=actServiceDao.getAct(new Long(id));
		
		BeanUtils.copyProperties(activityForm, ac);
		request.setAttribute("fee", ac);
		request.setAttribute("feeset",ac.getFee());
		return new ActionForward("/admin/club/checkactivity.jsp");
		
	}
	/** 
	 * 写入审核结果
	 * @throws InvocationTargetException 
	 * @throws IllegalAccessException 
	 * @throws IOException 
	 */
	
	public ActionForward checkAct(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws IllegalAccessException, InvocationTargetException, IOException {
		ActivityForm activityForm = (ActivityForm) form;// TODO Auto-generated method stub
		String check=activityForm.getIscheck();
		System.out.println(check);
			actServiceDao.updateCheck(activityForm.getActId(), check);
		
		response.getWriter().print("<script>alert('操作成功！');location.href='"
				+ request.getContextPath()
				+ "/admin/activity.do?task=showActivity';</script>");
		return null;
		
	}
	/**
	 * 导出EXCEL
	 * 
	 * 
	 */
	public ActionForward outExcel(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ActivityForm activityForm = (ActivityForm) form;// TODO Auto-generated method
												// stub
		String[] selectg = activityForm.getSel();
		String gid = "";
		String id = "";
		if (selectg != null) {
			for (int i = 0; i < selectg.length; i++) {
				gid = gid +","+ selectg[i];
			}
			id = gid.substring(1);
		
		}
		
		
		String sql = "";
		
			sql = "select * from club_activity c , t_Fees t where c.act_id=t.act_id";
			if (selectg != null) {
				sql += " and c.act_id in (" + id + ")";
			
			}

		
       System.out.println(sql);
		String[] titles = new String[] { "活动ID", "活动时间", "活动地点", "活动内容", "组织人",
				"预计参加人数", "实际参加人数", "预计费用", "实际费用", "审核状态", "费用ID", "活动表ID", "费用名称", "预计费用" , "实际费用"};
		ExportExcel export = new ExportExcel();
		String sheetTitle = "Excel1";
		export.exportExcel(response, sql, titles, sheetTitle);
		return null;
	}

	public ActServiceDao getActServiceDao() {
		return actServiceDao;
	}

	public void setActServiceDao(ActServiceDao actServiceDao) {
		this.actServiceDao = actServiceDao;
	}
}