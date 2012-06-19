/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.crm.group.struts.action;

import java.awt.Color;
import java.awt.RenderingHints;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.data.general.DefaultPieDataset;

import com.crm.client.po.TClient;
import com.crm.group.po.Groups;
import com.crm.group.po.TFee;
import com.crm.group.po.TGroupfee;
import com.crm.group.po.TGrouplinker;
import com.crm.group.po.VipCity;
import com.crm.group.po.VipProvince;
import com.crm.group.service.dao.inf.GroupViewServiceDAO;
import com.crm.group.struts.form.GroupViewForm;
import com.crm.page.PageUtil;
import com.crm.pub.GlobVar;
import com.crm.pub.po.TData;
import com.crm.pub.po.TUser;

/**
 * MyEclipse Struts Creation date: 10-28-2009
 * 
 * XDoclet definition:
 * 
 * @struts.action path="/admin/groupView" name="groupViewForm"
 *                input="/form/groupView.jsp" parameter="task" scope="request"
 *                validate="true"
 */
public class GroupViewAction extends DispatchAction {
	/*
	 * Generated Methods
	 */

	private GroupViewServiceDAO groupViewServiceDAO;

	/**
	 * Method �����б�
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward groupList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		GroupViewForm groupViewForm = (GroupViewForm) form;
		Groups groups = new Groups();
		if (groupViewForm.getGroupid() != null
				&& !"".equals(groupViewForm.getGroupid())) {
			groups.setGroupid(groupViewForm.getGroupid());
		}
		if (groupViewForm.getGroupname() != null
				&& !"".equals(groupViewForm.getGroupname())) {
			groups.setGroupname(groupViewForm.getGroupname());
		}
		// ʡ

		if (groupViewForm.getPrivince() != null
				&& !"".equals(groupViewForm.getPrivince())) {

			String pname = groupViewServiceDAO.getProvName(groupViewForm
					.getPrivince());
			groups.setPrivince(pname);

		}
		// ��
		if (groupViewForm.getCity() != null
				&& !"".equals(groupViewForm.getCity())) {
			groups.setCity(groupViewForm.getCity());

		}
		// ��ҵ
		if (groupViewForm.getVocation() != null
				&& !"".equals(groupViewForm.getVocation())) {
			groups.setVocation(groupViewForm.getVocation());
		}

		// ����
		if (groupViewForm.getManager() != null
				&& !"".equals(groupViewForm.getManager())) {
			groups.setManager(groupViewForm.getManager());
		}

		// ����

		if (groupViewForm.getGrouplevel() != null
				&& !"".equals(groupViewForm.getGrouplevel())) {
			groups.setGrouplevel(groupViewForm.getGrouplevel());
		}

		// /
		Integer fcount = null;
		Integer tcount = null;
		Integer fmoney = null;
		Integer tmoney = null;

		if (groupViewForm.getFcount() != null
				&& !"".equals(groupViewForm.getFcount())) {
			fcount = Integer.parseInt(groupViewForm.getFcount());

		}
		if (groupViewForm.getTcount() != null
				&& !"".equals(groupViewForm.getTcount())) {
			tcount = Integer.parseInt(groupViewForm.getTcount());

		}
		if (groupViewForm.getFmoney() != null
				&& !"".equals(groupViewForm.getFmoney())) {
			fmoney = Integer.parseInt(groupViewForm.getFmoney());
		}
		if (groupViewForm.getTmoney() != null
				&& !"".equals(groupViewForm.getTmoney())) {
			tmoney = Integer.parseInt(groupViewForm.getTmoney());
		}
		int rcount = groupViewServiceDAO.getCount(groups, fcount, tcount,
				fmoney, tmoney);
		PageUtil pageUtil = new PageUtil(request, rcount,
				GlobVar.PAGESIZE_BY_SMALL_DATA);
		List groupsList = groupViewServiceDAO.searchGroupList(groups, pageUtil
				.pastart(), pageUtil.getPagesize(), fcount, tcount, fmoney,
				tmoney);

		request.setAttribute("pageUtil", pageUtil);
		List glist = groupViewServiceDAO.searchManagerList();
		List<TUser> manageList = new ArrayList<TUser>();
		for (Object o : glist) {
			Object obj[] = (Object[]) o;
			TUser user = (TUser) obj[0];
			manageList.add(user);
		}
		request.setAttribute("manageList", manageList);
		// �����б�
		List<TData> ldlist = groupViewServiceDAO.searchLevelList();
		List<TData> ldataList = new ArrayList<TData>();

		for (TData data : ldlist) {
			ldataList.add(data);
		}
		request.setAttribute("ldataList", ldataList);
		// ��ҵ�б�
		List<TData> vdlist = groupViewServiceDAO.searchVocationList();
		List<TData> vdataList = new ArrayList<TData>();

		for (TData data : vdlist) {
			vdataList.add(data);
		}
		request.setAttribute("vdataList", vdataList);
		// ʡ���б�
		List<VipProvince> pdlist = groupViewServiceDAO.searchProvinceList();
		List<VipProvince> pdataList = new ArrayList<VipProvince>();

		for (VipProvince data : pdlist) {
			pdataList.add(data);
		}
		request.setAttribute("pdataList", pdataList);
		request.setAttribute("groupsList", groupsList);
		return new ActionForward("/admin/group/grvmanagerlist.jsp");
	}

	/**
	 * ��ͼͳ��
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward countView(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		GroupViewForm groupViewForm = (GroupViewForm) form;// TODO
		String groupid = null;
		String groupIdStr = request.getParameter("groupid");
		try {
			groupid = groupIdStr;

		} catch (Exception e) {
			e.printStackTrace();
		}
		Calendar cal = Calendar.getInstance();

		int nowMonth = cal.get(Calendar.MONTH);
		// ��ȡ��ǰ��
		int nowYear = cal.get(Calendar.YEAR);
		String nowDate = nowYear + "-" + (nowMonth) + "-1";
		// 6
		List<TGroupfee> groupFeeList = groupViewServiceDAO.tGroupfeeList(
				groupid, nowYear, nowMonth);
		request.setAttribute("groupFeeList", groupFeeList);

		/**
		 * ��������
		 */
		TGroupfee groupFee = this.groupViewServiceDAO.getGroupFee(groupid,
				nowDate);

		Groups group = this.groupViewServiceDAO.getGroup(groupid);
		request.setAttribute("group", group);
		request.setAttribute("groupFee", groupFee);
		request.setAttribute("groupid", groupid);
		TGrouplinker linker = null;

		try {
			linker = groupViewServiceDAO.getLinker(groupid);
		} catch (Exception e) {

		}
		request.setAttribute("linker", linker);
		return new ActionForward("/admin/group/groupsview.jsp");
	}

	/**
	 * ���Ż�����ͼ
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward monthView(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		GroupViewForm groupViewForm = (GroupViewForm) form;// TODO

		String groupid = null;
		String groupIdStr = request.getParameter("groupid");
		try {
			groupid = groupIdStr;

		} catch (Exception e) {
			e.printStackTrace();
		}

		Calendar cal = Calendar.getInstance();
		Integer nowMonth = cal.get(Calendar.MONTH);
		// ��ȡ��ǰ��
		int nowYear = cal.get(Calendar.YEAR);
		// 6��������
		List<TGroupfee> groupFeeList = groupViewServiceDAO.tGroupfeeList(
				groupid, nowYear, nowMonth);
		DefaultCategoryDataset dataset = new DefaultCategoryDataset();
		for (TGroupfee groupfee : groupFeeList) {

			dataset.addValue(groupfee.getFullfee(), "ÿ�»��ѽ���λ��Ԫ��", groupfee
					.getHistorytime().toString().substring(5, 7)
					+ "��");
		}
		JFreeChart chart = ChartFactory.createLineChart("�»�������ͼ", // ͼ������
				"�·�", // Ŀ¼�����ʾ��ǩ
				"����", // ��ֵ�����ʾ��ǩ
				dataset, // ���ݼ�
				PlotOrientation.VERTICAL, // ͼ������ˮƽ����ֱ
				true, // �Ƿ���ʾͼ��(���ڼ򵥵���״ͼ������false)
				false, // �Ƿ����ɹ���
				false // �Ƿ�����URL����
				);

		/*----------������������ľ����Ⱦ������������⣩--------------*/
		chart.getRenderingHints().put(RenderingHints.KEY_TEXT_ANTIALIASING,
				RenderingHints.VALUE_TEXT_ANTIALIAS_OFF);

		/*------------����ͼ������--------------*/
		// 1,��������ͼ��������ɫ
		chart.setBackgroundPaint(Color.pink);

		/*------------�趨Plot����-------------*/
		CategoryPlot plot = chart.getCategoryPlot();
		// 2,������ϸͼ������ʾϸ�ڲ��ֵı�����ɫ
		// plot.setBackgroundPaint(Color.PINK);
		// 3,���ô�ֱ��������ɫ
		plot.setDomainGridlinePaint(Color.black);
		// 4,�����Ƿ���ʾ��ֱ������
		plot.setDomainGridlinesVisible(true);
		// 5,����ˮƽ��������ɫ
		plot.setRangeGridlinePaint(Color.blue);
		// 6,�����Ƿ���ʾˮƽ������
		plot.setRangeGridlinesVisible(true);
		/*------�õ�chart�ı���·��----*/
		try {
			ChartUtilities.writeChartAsJPEG(response.getOutputStream(), 1.0f,
					chart, 400, 300, null);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * �����û�����ͼ
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward userCountView(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		GroupViewForm groupViewForm = (GroupViewForm) form;// TODO

		String groupid = null;
		String groupIdStr = request.getParameter("groupid");
		try {
			groupid = groupIdStr;

		} catch (Exception e) {
			e.printStackTrace();
		}
		Calendar cal = Calendar.getInstance();
		Integer nowMonth = cal.get(Calendar.MONTH);
		// ��ȡ��ǰ��
		int nowYear = cal.get(Calendar.YEAR);
		List<TGroupfee> groupFeeList = groupViewServiceDAO.tGroupfeeList(
				groupid, nowYear, nowMonth);
		DefaultCategoryDataset dataset = new DefaultCategoryDataset();
		for (TGroupfee groupfee : groupFeeList) {

			dataset.addValue(groupfee.getOutcount(), "ÿ�³�����������λ���ˣ�", groupfee
					.getHistorytime().toString().substring(5, 7)
					+ "��");
		}
		JFreeChart chart = ChartFactory.createLineChart("�û���������ͼ", // ͼ������
				"�·�", // Ŀ¼�����ʾ��ǩ
				"�û���", // ��ֵ�����ʾ��ǩ
				dataset, // ���ݼ�
				PlotOrientation.VERTICAL, // ͼ������ˮƽ����ֱ
				true, // �Ƿ���ʾͼ��(���ڼ򵥵���״ͼ������false)
				false, // �Ƿ����ɹ���
				false // �Ƿ�����URL����
				);

		/*----------������������ľ����Ⱦ������������⣩--------------*/
		chart.getRenderingHints().put(RenderingHints.KEY_TEXT_ANTIALIASING,
				RenderingHints.VALUE_TEXT_ANTIALIAS_OFF);

		/*------------����ͼ������--------------*/
		// 1,��������ͼ��������ɫ
		chart.setBackgroundPaint(Color.pink);

		/*------------�趨Plot����-------------*/
		CategoryPlot plot = chart.getCategoryPlot();
		// 2,������ϸͼ������ʾϸ�ڲ��ֵı�����ɫ
		// plot.setBackgroundPaint(Color.PINK);
		// 3,���ô�ֱ��������ɫ
		plot.setDomainGridlinePaint(Color.black);
		// 4,�����Ƿ���ʾ��ֱ������
		plot.setDomainGridlinesVisible(true);
		// 5,����ˮƽ��������ɫ
		plot.setRangeGridlinePaint(Color.blue);
		// 6,�����Ƿ���ʾˮƽ������
		plot.setRangeGridlinesVisible(true);
		/*------�õ�chart�ı���·��----*/
		try {
			ChartUtilities.writeChartAsJPEG(response.getOutputStream(), 1.0f,
					chart, 400, 300, null);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * ������Ϣ
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward traffic(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		GroupViewForm groupViewForm = (GroupViewForm) form;// TODO

		String groupid = null;
		String groupIdStr = request.getParameter("groupid");
		try {
			groupid = groupIdStr;

		} catch (Exception e) {
			e.printStackTrace();
		}
		Calendar cal = Calendar.getInstance();
		Integer nowMonth = cal.get(Calendar.MONTH);
		// ��ȡ��ǰ��
		int nowYear = cal.get(Calendar.YEAR);
		String nowDate = nowYear + "-" + (nowMonth) + "-1";
		TGroupfee groupFee = this.groupViewServiceDAO.getGroupFee(groupid,
				nowDate);
		request.setAttribute("groupFee", groupFee);

		List<TGroupfee> groupFeeList = groupViewServiceDAO.tGroupfeeList(
				groupid, nowYear, nowMonth);

		Long nowFee = groupFeeList.get(0).getFullfee();
		request.setAttribute("nowFee", nowFee);
		Long nowFee1 = groupFeeList.get(1).getFullfee();
		request.setAttribute("nowFee1", nowFee1);
		Long nowFee2 = groupFeeList.get(2).getFullfee();
		request.setAttribute("nowFee2", nowFee2);
		Long nowFee3 = groupFeeList.get(3).getFullfee();
		request.setAttribute("nowFee3", nowFee3);
		Long nowFee4 = groupFeeList.get(4).getFullfee();
		request.setAttribute("nowFee4", nowFee4);
		Long nowFee5 = groupFeeList.get(5).getFullfee();
		request.setAttribute("nowFee5", nowFee5);

		request.setAttribute("groupFeeList", groupFeeList);

		return new ActionForward("/admin/group/trafficview.jsp");
	}

	/**
	 * ������Ϣ��ͼ
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward trafficView(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		GroupViewForm groupViewForm = (GroupViewForm) form;// TODO

		String groupid = null;
		String groupIdStr = request.getParameter("groupid");
		try {
			groupid = groupIdStr;

		} catch (Exception e) {
			e.printStackTrace();
		}
		Calendar cal = Calendar.getInstance();
		Integer nowMonth = cal.get(Calendar.MONTH);
		// ��ȡ��ǰ��
		int nowYear = cal.get(Calendar.YEAR);
		String nowDate = nowYear + "-" + (nowMonth) + "-1";
		TGroupfee groupFee = this.groupViewServiceDAO.getGroupFee(groupid,
				nowDate);
		DefaultPieDataset dataset = new DefaultPieDataset();
		dataset.setValue("�����", groupFee.getMonthfee());
		dataset.setValue("����ͨ����", groupFee.getSayfee());
		dataset.setValue("��;��", groupFee.getLongfee());
		dataset.setValue("���η�", groupFee.getSwimfee());
		dataset.setValue("���ŷ�", groupFee.getShortfee());
		dataset.setValue("��ֵҵ���", groupFee.getAddfee());
		dataset.setValue("��������", groupFee.getOtherfee());
		JFreeChart chart = ChartFactory.createPieChart3D("���ѽṹ(��λ��Ԫ)", // ͼ������
				dataset, // ���ݼ�
				true, // �Ƿ���ʾͼ��
				false, // �Ƿ����ɹ���
				false // �Ƿ�����URL����
				);
		chart.setBackgroundPaint(Color.pink);
		/*------�õ�chart�ı���·��----*/
		ChartUtilities.writeChartAsJPEG(response.getOutputStream(), 1.0f,
				chart, 400, 300, null);
		return null;
	}

	/**
	 * ������Ϊ��Ϣ��ͼ
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward behavior(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		GroupViewForm groupViewForm = (GroupViewForm) form;// TODO

		String groupid = null;
		String groupIdStr = request.getParameter("groupid");
		try {
			groupid = groupIdStr;

		} catch (Exception e) {
			e.printStackTrace();
		}
		Calendar cal = Calendar.getInstance();
		Integer nowMonth = cal.get(Calendar.MONTH);
		// ��ȡ��ǰ��
		int nowYear = cal.get(Calendar.YEAR);
		String nowDate = nowYear + "-" + (nowMonth) + "-1";
		TGroupfee groupFee = this.groupViewServiceDAO.getGroupFee(groupid,
				nowDate);
		request.setAttribute("groupFee", groupFee);

		return new ActionForward("/admin/group/behavior.jsp");
	}

	/**
	 * �춯
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward transaction(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		GroupViewForm groupViewForm = (GroupViewForm) form;// TODO

		String groupid = null;
		String groupIdStr = request.getParameter("groupid");
		try {
			groupid = groupIdStr;

		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("groupid", groupid);

		Groups group = new Groups();

		group.setGroupid(groupid);

		int rcount = groupViewServiceDAO.gettLogCount(group);
		PageUtil pageUtil = new PageUtil(request, rcount,
				GlobVar.PAGESIZE_BY_SMALL_DATA);
		List logList = groupViewServiceDAO.searchtLogList(group, pageUtil
				.pastart(), pageUtil.getPagesize());
		request.setAttribute("pageUtil", pageUtil);
		request.setAttribute("logList", logList);

		return new ActionForward("/admin/group/transaction.jsp");
	}

	/**
	 * ���Ż�������
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward groupinfo(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		GroupViewForm groupViewForm = (GroupViewForm) form;// TODO
		String groupid = null;
		String groupIdStr = request.getParameter("groupid");
		try {
			groupid = groupIdStr;

		} catch (Exception e) {
			e.printStackTrace();
		}
		Groups group = new Groups();
		group = groupViewServiceDAO.getGroup(groupid);
		
		if(group.getArea()!=null&&!"".equals(group.getArea())){
			
			String name=groupViewServiceDAO.getAreaName(new Long(group.getArea()));
			group.setArea(name);
			
		}

		TGrouplinker linker = new TGrouplinker();

		try {
			linker = groupViewServiceDAO.getLinker(groupid);
		} catch (Exception e) {

		}

		request.setAttribute("group", group);
		request.setAttribute("linker", linker);
		request.setAttribute("groupid", groupid);

		return new ActionForward("/admin/group/groupinfo.jsp");
	}

	/**
	 * �����û��б���Ϣ
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward guserlist(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		GroupViewForm groupViewForm = (GroupViewForm) form;// TODO

		String groupid = null;
		String groupIdStr = request.getParameter("groupid");
		try {
			groupid = groupIdStr;

		} catch (Exception e) {
			e.printStackTrace();
		}
		Calendar cal = Calendar.getInstance();
		Integer nowMonth = cal.get(Calendar.MONTH);
		// ��ȡ��ǰ��
		int nowYear = cal.get(Calendar.YEAR);
		String nowDate = nowYear + "-" + (nowMonth) + "-1";
		List<TClient> clientList = null;
		int rcount = groupViewServiceDAO.clientCount(groupid, nowDate);
		PageUtil pageUtil = new PageUtil(request, rcount,
				GlobVar.PAGESIZE_BY_BIG_DATA);
		clientList = groupViewServiceDAO.clientList(groupid, nowDate, pageUtil
				.pastart(), pageUtil.getPagesize());
		request.setAttribute("pageUtil", pageUtil);
		// �ͻ��б�
		List clist = new ArrayList();
		// �����б�
		List glist = new ArrayList();
		// �����б�
		List flist = new ArrayList();
		// Ʒ���б�
		List dlist = new ArrayList();
		for (Object o : clientList) {
			Object objs[] = (Object[]) o;
			TClient client = (TClient) objs[0];
			TFee fee = (TFee) objs[1];
			Groups group = (Groups) objs[3];
			TData data = (TData) objs[4];
			clist.add(client);
			glist.add(group);
			flist.add(fee);
			dlist.add(data);
		}
		request.setAttribute("clist", clist);
		request.setAttribute("glist", glist);
		request.setAttribute("flist", flist);
		request.setAttribute("dlist", dlist);
		request.setAttribute("groupid", groupid);
		return new ActionForward("/admin/group/guseintolist.jsp");
	}

	/**
	 * ������Ϣ
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward feeinfo(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		GroupViewForm groupViewForm = (GroupViewForm) form;// TODO

		String groupid = null;
		String groupIdStr = request.getParameter("groupid");
		try {
			groupid = groupIdStr;

		} catch (Exception e) {
			e.printStackTrace();
		}
		Calendar cal = Calendar.getInstance();
		Integer nowMonth = cal.get(Calendar.MONTH);
		// ��ȡ��ǰ��
		int nowYear = cal.get(Calendar.YEAR);
		int rcount = groupViewServiceDAO.userFeeListCount(groupid);
		PageUtil pageUtil = new PageUtil(request, rcount,
				GlobVar.PAGESIZE_BY_MAX_DATA);
		List list = groupViewServiceDAO.userFeeList(groupid,
				pageUtil.pastart(), pageUtil.getPagesize());
		List feelist = new ArrayList();
		for (Object o : list) {
			Object objs[] = (Object[]) o;
			TFee fee = new TFee();
			fee.setFeedate((Date) objs[0]);
			fee.setPhone((String) objs[1]);
			fee.setFullfee((Long) objs[2]);
			fee.setArrearage((Long) objs[3]);
			feelist.add(fee);
		}
		request.setAttribute("feelist", feelist);
		request.setAttribute("pageUtil", pageUtil);
		request.setAttribute("groupid", groupid);
		return new ActionForward("/admin/group/feeinfo.jsp");
	}

	/**
	 * ���ſͻ������������б���
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward gruserManager(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		GroupViewForm groupViewForm = (GroupViewForm) form;// TODO
		Groups groups = new Groups();
		if (groupViewForm.getGroupid() != null
				&& !"".equals(groupViewForm.getGroupid())) {
			groups.setGroupid(groupViewForm.getGroupid());
		}
		if (groupViewForm.getGroupname() != null
				&& !"".equals(groupViewForm.getGroupname())) {
			groups.setGroupname(groupViewForm.getGroupname());
		}

		int rcount = groupViewServiceDAO.getCount(groups);
		PageUtil pageUtil = new PageUtil(request, rcount,
				GlobVar.PAGESIZE_BY_SMALL_DATA);
		List groupsList = groupViewServiceDAO.searchGroupDistributeList(groups,
				pageUtil.pastart(), pageUtil.getPagesize());
		request.setAttribute("pageUtil", pageUtil);
		request.setAttribute("groupsList", groupsList);
		return new ActionForward("/admin/group/grclientmanager.jsp");
	}

	public GroupViewServiceDAO getGroupViewServiceDAO() {
		return groupViewServiceDAO;
	}

	public void setGroupViewServiceDAO(GroupViewServiceDAO groupViewServiceDAO) {
		this.groupViewServiceDAO = groupViewServiceDAO;
	}
}