package com.crm.client.service.impl;

import java.util.List;

import com.crm.client.dao.inf.RuleDao;
import com.crm.client.po.TClientrule;
import com.crm.client.po.TRuleexp;
import com.crm.client.po.TRulelog;
import com.crm.client.service.inf.RuleServiceDao;
import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.DataDao;

public class RuleServiceDaoImpl implements RuleServiceDao {
	
	private RuleDao ruleDao;
	
	private DataDao dataDao;
	
	/**
	 * ȡ����־��¼��
	 * @return
	 */
	public Integer getRuleLogCount(){
		
		return this.ruleDao.getRuleLogCount();
	}
	
	
	/**
	 * ȡ����־����
	 * @return
	 */	
	public List getRuleLogList(PageUtil pageUtil){
		return this.ruleDao.getRuleLogList(pageUtil);
	}
	
	
	/**
	 * �޸Ĺ���
	 * 
	 * @param clientrule
	 * @param rulelog
	 * @return
	 */
	public Boolean updateClientRule(TClientrule clientrule , TRulelog rulelog){
		return this.ruleDao.updateClientRule(clientrule, rulelog);
	}
	/**
	 * ��ӹ�����ʽ
	 * @param ruleexp
	 * @return
	 */
	public Boolean addRuleExp(TRuleexp ruleexp){
		return this.ruleDao.addRuleExp(ruleexp);
	}
	
	/**
	 * ȡ�����е���һ��ID
	 * @return
	 */
	public Integer getSeqNextValue(){
		return this.ruleDao.getSeqNextValue();		
	}	
	/**
	 * ��ӹ���
	 * 
	 * @param clientrule
	 * @param rulelog
	 * @return
	 */
	public Boolean addClientRule(TClientrule clientrule , TRulelog rulelog){
		return this.ruleDao.addClientRule(clientrule,rulelog);
		
	}
	
	/**
	 * ɾ������
	 * @param id
	 * @return
	 */
	public Boolean deleteClientRule(Long id,TRulelog rulelog){
		return this.ruleDao.deleteClientRule(id,rulelog);
	}
	
	/**
	 * ��������
	 * @param clientrule
	 * @return
	 */
	public Boolean updateClientRule(TClientrule clientrule){
		return this.ruleDao.updateClientRule(clientrule);
	}
	/**
	 * ��ѯ�����б�
	 * @return
	 */
	public List searchRuleList(TClientrule clientrule ,PageUtil pageUtil){
		return  ruleDao.searchRuleList(clientrule , pageUtil);
	}
	/**
	 * �ͻ�����
	 * @return
	 */
	public TClientrule searchClientrule(TClientrule clientrule){
		
		return this.ruleDao.searchClientrule(clientrule);
	}
	/**
	 * ȡ�ü�¼������ֵ
	 * @param clientrule
	 * @return
	 */
	public Integer getCount(TClientrule clientrule)	{
		return this.ruleDao.getCount(clientrule);
	}
	
	
	
	
	public DataDao getDataDao() {
		return dataDao;
	}
	public void setDataDao(DataDao dataDao) {
		this.dataDao = dataDao;
	}
	public RuleDao getRuleDao() {
		return ruleDao;
	}
	public void setRuleDao(RuleDao ruleDao) {
		this.ruleDao = ruleDao;
	}
}
