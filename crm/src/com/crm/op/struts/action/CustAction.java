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
import com.crm.op.service.intf.CustServiceDao;
import com.crm.op.struts.form.CustForm;
import com.crm.page.PageUtil;
import com.crm.pub.GlobVar;
import com.crm.sysdo.po.TDept;
import com.crm.sysdo.struts.form.DeptForm;
import com.crm.tool.DateUtil;

public class CustAction extends DispatchAction{
	private CustServiceDao custServiceDao;
	
	/**
	 * 会员列表
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
		
		CustForm custForm = (CustForm) form;
		TCustomer cust = new TCustomer();
		BeanUtils.copyProperties(cust, custForm);
		
		Integer count = this.custServiceDao.getCustCount(cust);
		PageUtil pageUtil = new PageUtil(request, count, GlobVar.PAGESIZE_BY_TWENTY_DATA);		
		List list = this.custServiceDao.getCustList(cust,pageUtil);
		
		request.setAttribute("pageUtil", pageUtil);
		request.setAttribute("custList", list);		
		return new ActionForward("/admin/op/cust/custlist.jsp");
	}
	
	/**
	 * 跳转到新增客户页面
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
	 * 会员头像Ajax上传
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
		String message = "你已成功上传文件";

		/**String path = ServletActionContext.getRequest().getRealPath("/upload");
        try {
            File f = this.getFile();
            if(this.getFileFileName().endsWith(".exe")){
                message="对不起,你上传的文件格式不允许!!!";
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
            message = "对不起,文件上传失败了!!!!";
        }**/
		
		response.getWriter().write(message);
		return null;
	}
	
	/**
	 * 跳转到修改i啊客户页面
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
		TCustomer cust = this.custServiceDao.getCustByID(id);	
		BeanUtils.copyProperties(custForm, cust);
		custForm.setBirthday(DateUtil.DateToStringBy_YMD(cust.getBirthday()));
		
		request.setAttribute("cust", cust);
		
		return new ActionForward("/admin/op/cust/updatecust.jsp");
	}
	/**
	 * 新增部门
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
					"<script>if(confirm('科室部门新增成功,是否继续新增?')){location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=toAddDept';}else{location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=deptList';}</script>");
		} else {
			response.getWriter().write(
					"<script>if(confirm('科室部门新增失败,是否重试?')){location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=toAddDept';}else{location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=deptList';}</script>");
		}
		return null;
	}
	
	/**
	 * 删除客户
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
		
		Boolean bool = this.custServiceDao.deleteCust(cust.getId());
		if (bool) {
			response.getWriter().write(
					"<script>alert('会员删除成功!');location.href='"
							+ request.getContextPath()
							+ "/admin/cust.do?task=custList';</script>");
		} else {
			response.getWriter().write(
					"<script>alert('删除删除失败!');location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=custList';</script>");
		}
		return null;
	}
	
	/**
	 * 跳转到修改部门
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
	 * 修改部门
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
					"<script>if(confirm('科室部门更新成功,是否继续更新?')){location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=toUpdateDept&id="+dept.getId()+"';}else{location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=deptList';}</script>");
		} else {
			response.getWriter().write(
					"<script>if(confirm('科室部门更新失败,是否重试?')){location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=toUpdateDept&id="+dept.getId()+"';}else{location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=deptList';}</script>");
		}
		
		return null;
	}

	public CustServiceDao getCustServiceDao() {
		return custServiceDao;
	}

	public void setCustServiceDao(CustServiceDao custServiceDao) {
		this.custServiceDao = custServiceDao;
	}

}
