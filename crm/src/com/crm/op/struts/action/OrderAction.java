package com.crm.op.struts.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.crm.op.po.TCustomer;
import com.crm.op.po.TRegister;
import com.crm.op.service.intf.OrderServiceDao;
import com.crm.op.service.intf.RegServiceDao;
import com.crm.op.struts.form.CustForm;
import com.crm.page.PageUtil;
import com.crm.pub.GlobVar;
import com.crm.sysdo.po.TDept;
import com.crm.sysdo.struts.form.DeptForm;

public class OrderAction extends DispatchAction{
	private OrderServiceDao orderServiceDao;
	
	/**
	 * ��Ա�б�
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward custList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		RegForm regForm = (RegForm) form;
		TRegister reg = new TRegister();
		BeanUtils.copyProperties(reg, regForm);
		
		Integer count = this.orderServiceDao.getOrderCount(reg);
		PageUtil pageUtil = new PageUtil(request, count, GlobVar.PAGESIZE_BY_TWENTY_DATA);		
		List list = this.orderServiceDao.getCustList(cust,pageUtil);
		
		request.setAttribute("pageUtil", pageUtil);
		request.setAttribute("custList", list);		
		return new ActionForward("/admin/op/cust/custlist.jsp");
	}
	
	/**
	 * ��ת�������ͻ�ҳ��
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward toAddCust(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		//Integer count = this.deptServiceDao.getDeptCount();
		//PageUtil pageUtil = new PageUtil(request, count, count);		
		//List list = this.deptServiceDao.getDeptList(pageUtil);		
		//request.setAttribute("deptList", list);
		
		return new ActionForward("/admin/op/index.jsp");
	}
	/**
	 * ��Աͷ��Ajax�ϴ�
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward uploadPhoto(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String message = "���ѳɹ��ϴ��ļ�";

		/**String path = ServletActionContext.getRequest().getRealPath("/upload");
        try {
            File f = this.getFile();
            if(this.getFileFileName().endsWith(".exe")){
                message="�Բ���,���ϴ����ļ���ʽ������!!!";
                return ERROR;
            }
            FileInputStream inputStream = new FileInputStream(f);
            FileOutputStream outputStream = new FileOutputStream(path + "/"+ this.getFileFileName());
            byte[] buf = new byte[1024];
            int length = 0;
            while ((length = inputStream.read(buf)) != -1) {
                outputStream.write(buf, 0, length);
            }
            inputStream.close();
            outputStream.flush();
        } catch (Exception e) {
            e.printStackTrace();
            message = "�Բ���,�ļ��ϴ�ʧ����!!!!";
        }**/
		
		response.getWriter().write(message);
		return null;
	}
	
	/**
	 * ��ת���޸�i���ͻ�ҳ��
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward toUpdateCust(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		CustForm custForm = (CustForm) form;
		
		Long id = Long.valueOf(request.getParameter("id"));
		TCustomer cust = this.orderServiceDao.getCustByID(id);	
		BeanUtils.copyProperties(custForm, cust);
		
		request.setAttribute("cust", cust);
		
		return new ActionForward("/admin/op/cust/updatecust.jsp");
	}
	/**
	 * ��������
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward addDept(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		DeptForm deptForm = (DeptForm) form;
		TDept dept = new TDept();
		BeanUtils.copyProperties(dept, deptForm);
				
		//Boolean bool = this.deptServiceDao.addDept(dept);
		boolean bool = false;
		if (bool) {
			response.getWriter().write(
					"<script>if(confirm('���Ҳ��������ɹ�,�Ƿ��������?')){location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=toAddDept';}else{location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=deptList';}</script>");
		} else {
			response.getWriter().write(
					"<script>if(confirm('���Ҳ�������ʧ��,�Ƿ�����?')){location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=toAddDept';}else{location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=deptList';}</script>");
		}
		return null;
	}
	
	/**
	 * ɾ���ͻ�
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward deleteDept(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		CustForm custForm = (CustForm) form;
		TCustomer cust = new TCustomer();
		BeanUtils.copyProperties(cust, custForm);
		
		Boolean bool = this.orderServiceDao.deleteCust(cust.getId());
		if (bool) {
			response.getWriter().write(
					"<script>alert('��Աɾ���ɹ�!');location.href='"
							+ request.getContextPath()
							+ "/admin/cust.do?task=custList';</script>");
		} else {
			response.getWriter().write(
					"<script>alert('ɾ��ɾ��ʧ��!');location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=custList';</script>");
		}
		return null;
	}
	
	/**
	 * ��ת���޸Ĳ���
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward  toUpdateDept(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
	throws Exception {
		DeptForm deptForm = (DeptForm) form;
		TDept dept = new TDept();
		BeanUtils.copyProperties(dept, deptForm);
		
		//TDept info = this.deptServiceDao.getDeptByID(dept.getId());
		//request.setAttribute("deptInfo", info);
		
		//Integer count = this.deptServiceDao.getDeptCount();
		//PageUtil pageUtil = new PageUtil(request, count, count);
		///List list = this.deptServiceDao.getDeptList(pageUtil);
		//request.setAttribute("deptList", list);
		
		return new ActionForward("/admin/sysdo/dept/updatedept.jsp");
	}
	
	/**
	 * �޸Ĳ���
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward  updateDept(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		DeptForm deptForm = (DeptForm) form;
		TDept dept = new TDept();
		BeanUtils.copyProperties(dept, deptForm);
		
		//boolean bool = this.deptServiceDao.updateDept(dept);
		boolean bool = false;
		if (bool) {
			response.getWriter().write(
					"<script>if(confirm('���Ҳ��Ÿ��³ɹ�,�Ƿ��������?')){location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=toUpdateDept&id="+dept.getId()+"';}else{location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=deptList';}</script>");
		} else {
			response.getWriter().write(
					"<script>if(confirm('���Ҳ��Ÿ���ʧ��,�Ƿ�����?')){location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=toUpdateDept&id="+dept.getId()+"';}else{location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=deptList';}</script>");
		}
		
		return null;
	}

	public OrderServiceDao getOrderServiceDao() {
		return orderServiceDao;
	}

	public void setOrderServiceDao(OrderServiceDao orderServiceDao) {
		this.orderServiceDao = orderServiceDao;
	}

	public RegServiceDao getRegServiceDao() {
		return regServiceDao;
	}

	public void setRegServiceDao(RegServiceDao regServiceDao) {
		this.regServiceDao = regServiceDao;
	}
	
}
