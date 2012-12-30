package com.crm.op.dao.intf;

import java.util.List;

import com.crm.op.po.TSick;
import com.crm.page.PageUtil;

public interface SickDao {
	/**
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getSickCount();
	
	/**
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getSickCount(TSick Sick);

	/**
	 * ȡ�ü���
	 * 
	 * @return
	 */
	public List getSickList(PageUtil pageUtil);
	
	/**
	 * ȡ�ü���
	 * 
	 * @return
	 */
	public List getSickList(TSick Sick, PageUtil pageUtil);

	public List getSickList();

	public TSick getSickByID(Long id);

	/**
	 * ��Ա
	 * 
	 * @param Sick
	 * @return
	 */
	public Boolean addSick(TSick Sick);

	/**
	 * ȡ�����е���һ��ID
	 * 
	 * @return
	 */
	public Integer getSeqNextValue();

	/**
	 * �޸Ļ�Ա
	 * 
	 * @param clientrule
	 * @param rulelog
	 * @return
	 */
	public Boolean updateSick(TSick Sick);

	/**
	 * ɾ����Ա
	 * 
	 * @param id
	 * @return
	 */
	public Boolean deleteSick(Long id);
}
