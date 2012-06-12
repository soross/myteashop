package com.crm.client.dao.inf;

import java.util.List;

import com.crm.client.po.TClientrule;
import com.crm.client.po.TRuleexp;
import com.crm.client.po.TRulelog;
import com.crm.page.PageUtil;

public interface RuleDao {
	/**
	 * ȡ����־��¼��
	 * @return
	 */
	public Integer getRuleLogCount();
	
	
	/**
	 * ȡ����־����
	 * @return
	 */	
	public List getRuleLogList(PageUtil pageUtil);
	
	/**
	 * ��ӹ�����ʽ
	 * @param ruleexp
	 * @return
	 */
	public Boolean addRuleExp(TRuleexp ruleexp);
	
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
	public Boolean updateClientRule(TClientrule clientrule , TRulelog rulelog);
	/**
	 * ��ӹ���
	 * 
	 * @param clientrule
	 * @param rulelog
	 * @return
	 */
	public Boolean addClientRule(TClientrule clientrule , TRulelog rulelog);
	/**
	 * ��ѯ�����б�
	 * @return
	 */
	public List searchRuleList(TClientrule clientrule ,PageUtil pageUtil);
	
	/**
	 * �ͻ�����
	 * @param
	 * @return
	 */
	public TClientrule searchClientrule(TClientrule clientrule);
	
	/**
	 * ��������
	 * @param clientrule
	 * @return
	 */
	public Boolean updateClientRule(TClientrule clientrule);
	/**
	 * ɾ������
	 * @param id
	 * @return
	 */
	public Boolean deleteClientRule(Long id,TRulelog rulelog);
	/**
	 * ȡ�ü�¼������ֵ
	 * @param clientrule
	 * @return
	 */
	public Integer getCount(TClientrule clientrule);
}
