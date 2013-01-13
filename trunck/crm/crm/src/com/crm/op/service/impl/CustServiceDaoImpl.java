package com.crm.op.service.impl;

import java.util.List;

import com.crm.op.dao.intf.CustDao;
import com.crm.op.po.TCustomer;
import com.crm.op.service.intf.CustServiceDao;
import com.crm.page.PageUtil;
import com.crm.sysdo.po.TDept;

public class CustServiceDaoImpl implements CustServiceDao{
	CustDao custDao;
	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getCustCount(){
		return custDao.getCustCount();		
	}
	
	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getCustCount(TCustomer cust){
		return custDao.getCustCount(cust);		
	}

	/**
	 * 取得集合
	 * 
	 * @return
	 */
	public List getCustList(PageUtil pageUtil){
		return custDao.getCustList(pageUtil);
	}
	/**
	 * 取得集合
	 * 
	 * @return
	 */
	public List getCustList(TCustomer cust, PageUtil pageUtil){
		return custDao.getCustList(cust,pageUtil);
	}

	public List getCustList(){
		return custDao.getCustList();
	}

	public TCustomer getCustByID(Long id){
		return custDao.getCustByID(id);
	}

	/**
	 * 会员
	 * 
	 * @param cust
	 * @return
	 */
	public Boolean addCust(TCustomer cust){
		return custDao.addCust(cust);
	}

	/**
	 * 取得序列的下一个ID
	 * 
	 * @return
	 */
	public Integer getSeqNextValue(){
		return custDao.getSeqNextValue();
	}

	/**
	 * 修改会员
	 * 
	 * @param clientrule
	 * @param rulelog
	 * @return
	 */
	public Boolean updateCust(TCustomer cust){
		return custDao.updateCust(cust);
	}

	/**
	 * 删除会员
	 * 
	 * @param id
	 * @return
	 */
	public Boolean deleteCust(Long id){
		return custDao.deleteCust(id);
	}

	public CustDao getCustDao() {
		return custDao;
	}

	public void setCustDao(CustDao custDao) {
		this.custDao = custDao;
	}
}
