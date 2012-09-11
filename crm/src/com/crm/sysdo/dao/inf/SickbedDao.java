package com.crm.sysdo.dao.inf;

import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TSickbed;

public interface SickbedDao {
	public TSickbed getSickbedById(Long id);
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getSickbedCount(TSickbed sickbed);
	/**
	 * ȡ�ü���
	 * @return
	 */	
	public List getSickbedList(PageUtil pageUtil,TSickbed sickbed);
	
	/**
	 * ����
	 * @param dept
	 * @return
	 */
	public Boolean addSickbed(TSickbed sickbed);
	
	/**
	 * ȡ�����е���һ��ID
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
	public Boolean updateSickbed(TSickbed sickbed);
	/**
	 * ɾ������
	 * @param id
	 * @return
	 */
	public Boolean deleteSickbed(Long id);
}
