package com.crm.sysdo.service.inf;

import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TDept;

public interface DeptServiceDao {

	/**
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getDeptCount();

	/**
	 * ȡ�ü���
	 * 
	 * @return
	 */
	public List getDeptList(PageUtil pageUtil);
	public List getDeptList();
	
	public List getDeptList(String type);
	
	public TDept getDeptByID(Long id);

	/**
	 * ����
	 * 
	 * @param dept
	 * @return
	 */
	public Boolean addDept(TDept dept);

	/**
	 * ȡ�����е���һ��ID
	 * 
	 * @return
	 */
	public Integer getSeqNextValue();

	/**
	 * �޸Ĺ���
	 * 
	 * @param clientrule
	 * @param rulelog
	 * @return
	 */
	public Boolean updateDept(TDept dept);

	/**
	 * ɾ������
	 * 
	 * @param id
	 * @return
	 */
	public Boolean deleteDept(Long id);

}
