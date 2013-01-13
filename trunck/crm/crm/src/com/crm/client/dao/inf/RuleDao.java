package com.crm.client.dao.inf;

import java.util.List;

import com.crm.client.po.TClientrule;
import com.crm.client.po.TRuleexp;
import com.crm.client.po.TRulelog;
import com.crm.page.PageUtil;

public interface RuleDao {
	/**
	 * 取得日志记录数
	 * @return
	 */
	public Integer getRuleLogCount();
	
	
	/**
	 * 取得日志集合
	 * @return
	 */	
	public List getRuleLogList(PageUtil pageUtil);
	
	/**
	 * 添加规则表达式
	 * @param ruleexp
	 * @return
	 */
	public Boolean addRuleExp(TRuleexp ruleexp);
	
	/**
	 * 取得序列的下一个ID
	 * @return
	 */
	public Integer getSeqNextValue();
	/**
	 * 修改规则
	 * 
	 * @param clientrule
	 * @param rulelog
	 * @return
	 */
	public Boolean updateClientRule(TClientrule clientrule , TRulelog rulelog);
	/**
	 * 添加规则
	 * 
	 * @param clientrule
	 * @param rulelog
	 * @return
	 */
	public Boolean addClientRule(TClientrule clientrule , TRulelog rulelog);
	/**
	 * 查询规则列表
	 * @return
	 */
	public List searchRuleList(TClientrule clientrule ,PageUtil pageUtil);
	
	/**
	 * 客户规则
	 * @param
	 * @return
	 */
	public TClientrule searchClientrule(TClientrule clientrule);
	
	/**
	 * 锁定规则
	 * @param clientrule
	 * @return
	 */
	public Boolean updateClientRule(TClientrule clientrule);
	/**
	 * 删除规则
	 * @param id
	 * @return
	 */
	public Boolean deleteClientRule(Long id,TRulelog rulelog);
	/**
	 * 取得记录集数量值
	 * @param clientrule
	 * @return
	 */
	public Integer getCount(TClientrule clientrule);
}
