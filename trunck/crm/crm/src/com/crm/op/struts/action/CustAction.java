package com.crm.op.struts.action;

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
		TCustomer cust = this.custServiceDao.getCustByID(id);	
		BeanUtils.copyProperties(custForm, cust);
		custForm.setBirthday(DateUtil.DateToStringBy_YMD(cust.getBirthday()));
		
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
		
		Boolean bool = this.custServiceDao.deleteCust(cust.getId());
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
	
	
	/**
	 * �����ϴ�
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward  uploadPhotoByCam(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		 //ע��һ��html����Ҳ��Ҫ����,��ֹ������Ϊserlvet�Ժ���дhtml���ͻ��˵���Ϊ
		String savePath= request.getRealPath("/admin/upload/"); 

		
		File tmp_path=new File(savePath);
		tmp_path.mkdirs();
		System.out.println("��Ƭ���ݱ���·��:"+savePath);

		String pic_base_64_data=request.getParameter("picData");
		//System.out.println("ͼƬ����:"+pic_base_64_data);

		//�������Ĵ������true��˵����Ҫ������������������������������post���ݵĴ�С��������,����
		//tomcat�Ļ���Ҫ��server.xml������maxPostSize="0"������ϴ����ݵĴ�С����   <Connector port="8080" protocol="HTTP/1.1" 
		//		               connectionTimeout="20000" 
		//		               redirectPort="8443" maxPostSize="0"/>
		// 
		System.out.println(null==pic_base_64_data);
		System.out.println("base64 string length:"+pic_base_64_data.length());
		String fileFormat=request.getParameter("picExt");
		
		sun.misc.BASE64Decoder decode=new sun.misc.BASE64Decoder();
		
		//byte[] datas=decode.decodeBuffer(pic_base_64_data); 
		byte[] datas=decode.decodeBuffer(pic_base_64_data.substring(1, pic_base_64_data.length()-2));
		
		String filename=String.valueOf(System.currentTimeMillis())+fileFormat;
		
		File file=new File(savePath+"/"+filename); 
		OutputStream fos=new FileOutputStream(file); 
		fos.write(datas); 
		fos.flush();
		fos.close();
		
		System.out.println("ͼƬ�ļ�����:"+filename);

		//response.setContentType("application/x-json");
		//response.setCharacterEncoding("utf-8");

		response.setContentType("text/html"); 

		PrintWriter out=response.getWriter(); 
		//out.print("{'savestatus':'ok','path':'aaaaa'}"); 
		out.print("<img src='"+savePath+"/"+filename+"' width='220px' height='160px'><br>");
		out.flush(); 
		out.close(); 

		return null;
	}
	
	public CustServiceDao getCustServiceDao() {
		return custServiceDao;
	}

	public void setCustServiceDao(CustServiceDao custServiceDao) {
		this.custServiceDao = custServiceDao;
	}

}
