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
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getCustCount(){
		return custDao.getCustCount();		
	}
	
	/**
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getCustCount(TCustomer cust){
		return custDao.getCustCount(cust);		
	}

	/**
	 * ȡ�ü���
	 * 
	 * @return
	 */
	public List getCustList(PageUtil pageUtil){
		return custDao.getCustList(pageUtil);
	}
	/**
	 * ȡ�ü���
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
	 * ��Ա
	 * 
	 * @param cust
	 * @return
	 */
	public Boolean addCust(TCustomer cust){
		return custDao.addCust(cust);
	}

	/**
	 * ȡ�����е���һ��ID
	 * 
	 * @return
	 */
	public Integer getSeqNextValue(){
		return custDao.getSeqNextValue();
	}

	/**
	 * �޸Ļ�Ա
	 * 
	 * @param clientrule
	 * @param rulelog
	 * @return
	 */
	public Boolean updateCust(TCustomer cust){
		return custDao.updateCust(cust);
	}

	/**
	 * ɾ����Ա
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
