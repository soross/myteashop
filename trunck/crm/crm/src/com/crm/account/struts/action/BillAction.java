package com.crm.account.struts.action;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.crm.account.po.TSickFeeBill;
import com.crm.account.service.intf.BillServiceDao;
import com.crm.account.struts.form.BillForm;
import com.crm.page.PageUtil;
import com.crm.pub.GlobVar;
import com.crm.sysdo.po.TDept;
import com.crm.sysdo.struts.form.DeptForm;
import com.crm.tool.DateUtil;

public class BillAction extends DispatchAction {
	private BillServiceDao BillServiceDao;

	private String BILL_TYPE_MZ = "MZ";

	private String BILL_TYPE_ZY = "ZY";

	private String BILL_TYPE_CY = "CY";

	private String ADD_FEE_BILL = "AF";

	/**
	 * 缴费
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward addFeeToBill(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		BillForm BillForm = (BillForm) form;
		TSickFeeBill Bill = new TSickFeeBill();
		BeanUtils.copyProperties(Bill, BillForm);
		Bill.setBilltype(ADD_FEE_BILL);
		this.BillServiceDao.addBill(Bill);
		return null;
	}

	/**
	 * 缴费清单
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward addFeeBillList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		BillForm BillForm = (BillForm) form;
		TSickFeeBill Bill = new TSickFeeBill();
		BeanUtils.copyProperties(Bill, BillForm);
		Bill.setBilltype(ADD_FEE_BILL);

		Integer count = this.BillServiceDao.getBillCount(Bill);
		PageUtil pageUtil = new PageUtil(request, count,
				GlobVar.PAGESIZE_BY_TWENTY_DATA);
		List list = this.BillServiceDao.getBillList(Bill, pageUtil);

		request.setAttribute("pageUtil", pageUtil);
		request.setAttribute("BillList", list);
		return new ActionForward("/admin/account/addfeelist.jsp");
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
	public ActionForward toAddBill(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		// Integer count = this.deptServiceDao.getDeptCount();
		// PageUtil pageUtil = new PageUtil(request, count, count);
		// List list = this.deptServiceDao.getDeptList(pageUtil);
		// request.setAttribute("deptList", list);

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

		/***********************************************************************
		 * String path =
		 * ServletActionContext.getRequest().getRealPath("/upload"); try { File
		 * f = this.getFile(); if(this.getFileFileName().endsWith(".exe")){
		 * message="对不起,你上传的文件格式不允许!!!"; return ERROR; } FileInputStream
		 * inputStream = new FileInputStream(f); FileOutputStream outputStream =
		 * new FileOutputStream(path + "/"+ this.getFileFileName()); byte[] buf =
		 * new byte[1024]; int length = 0; while ((length =
		 * inputStream.read(buf)) != -1) { outputStream.write(buf, 0, length); }
		 * inputStream.close(); outputStream.flush(); } catch (Exception e) {
		 * e.printStackTrace(); message = "对不起,文件上传失败了!!!!"; }
		 **********************************************************************/

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
	public ActionForward toUpdateBill(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		BillForm BillForm = (BillForm) form;

		Long id = Long.valueOf(request.getParameter("id"));
		TSickFeeBill Bill = this.BillServiceDao.getBillByID(id);
		BeanUtils.copyProperties(BillForm, Bill);
		BillForm.setCreateDates(DateUtil.DateToStringBy_YMD(Bill
				.getCreateDate()));

		request.setAttribute("Bill", Bill);

		return new ActionForward("/admin/op/Bill/updateBill.jsp");
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

		// Boolean bool = this.deptServiceDao.addDept(dept);
		boolean bool = false;
		if (bool) {
			response
					.getWriter()
					.write(
							"<script>if(confirm('科室部门新增成功,是否继续新增?')){location.href='"
									+ request.getContextPath()
									+ "/admin/dept.do?task=toAddDept';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/dept.do?task=deptList';}</script>");
		} else {
			response
					.getWriter()
					.write(
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
		BillForm BillForm = (BillForm) form;
		TSickFeeBill Bill = new TSickFeeBill();
		BeanUtils.copyProperties(Bill, BillForm);

		Boolean bool = this.BillServiceDao.deleteBill(Bill.getId());
		if (bool) {
			response.getWriter().write(
					"<script>alert('会员删除成功!');location.href='"
							+ request.getContextPath()
							+ "/admin/Bill.do?task=BillList';</script>");
		} else {
			response.getWriter().write(
					"<script>alert('删除删除失败!');location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=BillList';</script>");
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
	public ActionForward toUpdateDept(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		DeptForm deptForm = (DeptForm) form;
		TDept dept = new TDept();
		BeanUtils.copyProperties(dept, deptForm);

		// TDept info = this.deptServiceDao.getDeptByID(dept.getId());
		// request.setAttribute("deptInfo", info);

		// Integer count = this.deptServiceDao.getDeptCount();
		// PageUtil pageUtil = new PageUtil(request, count, count);
		// /List list = this.deptServiceDao.getDeptList(pageUtil);
		// request.setAttribute("deptList", list);

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
	public ActionForward updateDept(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		DeptForm deptForm = (DeptForm) form;
		TDept dept = new TDept();
		BeanUtils.copyProperties(dept, deptForm);

		// boolean bool = this.deptServiceDao.updateDept(dept);
		boolean bool = false;
		if (bool) {
			response.getWriter().write(
					"<script>if(confirm('科室部门更新成功,是否继续更新?')){location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=toUpdateDept&id="
							+ dept.getId() + "';}else{location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=deptList';}</script>");
		} else {
			response.getWriter().write(
					"<script>if(confirm('科室部门更新失败,是否重试?')){location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=toUpdateDept&id="
							+ dept.getId() + "';}else{location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=deptList';}</script>");
		}

		return null;
	}

	/**
	 * 拍照上传
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward uploadPhotoByCam(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		// 注意一行html内容也不要出现,防止被编译为serlvet以后有写html到客户端的行为
		String savePath = request.getRealPath("/admin/upload/");

		File tmp_path = new File(savePath);
		tmp_path.mkdirs();
		System.out.println("照片数据保存路径:" + savePath);

		String pic_base_64_data = request.getParameter("picData");
		// System.out.println("图片数据:"+pic_base_64_data);

		// 如果下面的代码输出true则说明需要调整服务器软件工作参数，解决接受post数据的大小限制问题,例如
		// tomcat的话需要在server.xml中配置maxPostSize="0"来解除上传数据的大小限制 <Connector
		// port="8080" protocol="HTTP/1.1"
		// connectionTimeout="20000"
		// redirectPort="8443" maxPostSize="0"/>
		// 
		System.out.println(null == pic_base_64_data);
		System.out.println("base64 string length:" + pic_base_64_data.length());
		String fileFormat = request.getParameter("picExt");

		sun.misc.BASE64Decoder decode = new sun.misc.BASE64Decoder();

		// byte[] datas=decode.decodeBuffer(pic_base_64_data);
		byte[] datas = decode.decodeBuffer(pic_base_64_data.substring(1,
				pic_base_64_data.length() - 2));

		String filename = String.valueOf(System.currentTimeMillis())
				+ fileFormat;

		File file = new File(savePath + "/" + filename);
		OutputStream fos = new FileOutputStream(file);
		fos.write(datas);
		fos.flush();
		fos.close();

		System.out.println("图片文件名称:" + filename);

		// response.setContentType("application/x-json");
		// response.setCharacterEncoding("utf-8");

		response.setContentType("text/html");

		PrintWriter out = response.getWriter();
		// out.print("{'savestatus':'ok','path':'aaaaa'}");
		out.print("<img src='" + savePath + "/" + filename
				+ "' width='220px' height='160px'><br>");
		out.flush();
		out.close();

		return null;
	}

	public BillServiceDao getBillServiceDao() {
		return BillServiceDao;
	}

	public void setBillServiceDao(BillServiceDao BillServiceDao) {
		this.BillServiceDao = BillServiceDao;
	}

}
