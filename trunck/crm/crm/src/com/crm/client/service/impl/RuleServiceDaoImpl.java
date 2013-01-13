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
	 * 取得日志记录数
	 * @return
	 */
	public Integer getRuleLogCount(){
		
		return this.ruleDao.getRuleLogCount();
	}
	
	
	/**
	 * 取得日志集合
	 * @return
	 */	
	public List getRuleLogList(PageUtil pageUtil){
		return this.ruleDao.getRuleLogList(pageUtil);
	}
	
	
	/**
	 * 修改规则
	 * 
	 * @param clientrule
	 * @param rulelog
	 * @return
	 */
	public Boolean updateClientRule(TClientrule clientrule , TRulelog rulelog){
		return this.ruleDao.updateClientRule(clientrule, rulelog);
	}
	/**
	 * 添加规则表达式
	 * @param ruleexp
	 * @return
	 */
	public Boolean addRuleExp(TRuleexp ruleexp){
		return this.ruleDao.addRuleExp(ruleexp);
	}
	
	/**
	 * 取得序列的下一个ID
	 * @return
	 */
	public Integer getSeqNextValue(){
		return this.ruleDao.getSeqNextValue();		
	}	
	/**
	 * 添加规则
	 * 
	 * @param clientrule
	 * @param rulelog
	 * @return
	 */
	public Boolean addClientRule(TClientrule clientrule , TRulelog rulelog){
		return this.ruleDao.addClientRule(clientrule,rulelog);
		
	}
	
	/**
	 * 删除规则
	 * @param id
	 * @return
	 */
	public Boolean deleteClientRule(Long id,TRulelog rulelog){
		return this.ruleDao.deleteClientRule(id,rulelog);
	}
	
	/**
	 * 锁定规则
	 * @param clientrule
	 * @return
	 */
	public Boolean updateClientRule(TClientrule clientrule){
		return this.ruleDao.updateClientRule(clientrule);
	}
	/**
	 * 查询规则列表
	 * @return
	 */
	public List searchRuleList(TClientrule clientrule ,PageUtil pageUtil){
		return  ruleDao.searchRuleList(clientrule , pageUtil);
	}
	/**
	 * 客户规则
	 * @return
	 */
	public TClientrule searchClientrule(TClientrule clientrule){
		
		return this.ruleDao.searchClientrule(clientrule);
	}
	/**
	 * 取得记录集数量值
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
