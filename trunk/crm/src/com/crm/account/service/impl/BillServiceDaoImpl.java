package com.crm.account.service.impl;

import java.util.List;

import com.crm.account.dao.intf.BillDao;
import com.crm.account.po.TSickFeeBill;
import com.crm.account.service.intf.BillServiceDao;
import com.crm.page.PageUtil;

public class BillServiceDaoImpl implements BillServiceDao{
	BillDao BillDao;
	/**
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getBillCount(){
		return BillDao.getBillCount();		
	}
	
	/**
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getBillCount(TSickFeeBill Bill){
		return BillDao.getBillCount(Bill);		
	}

	/**
	 * ȡ�ü���
	 * 
	 * @return
	 */
	public List getBillList(PageUtil pageUtil){
		return BillDao.getBillList(pageUtil);
	}
	/**
	 * ȡ�ü���
	 * 
	 * @return
	 */
	public List getBillList(TSickFeeBill Bill, PageUtil pageUtil){
		return BillDao.getBillList(Bill,pageUtil);
	}

	public List getBillList(){
		return BillDao.getBillList();
	}

	public TSickFeeBill getBillByID(Long id){
		return BillDao.getBillByID(id);
	}

	/**
	 * ��Ա
	 * 
	 * @param Bill
	 * @return
	 */
	public Boolean addBill(TSickFeeBill Bill){
		return BillDao.addBill(Bill);
	}

	/**
	 * ȡ�����е���һ��ID
	 * 
	 * @return
	 */
	public Integer getSeqNextValue(){
		return BillDao.getSeqNextValue();
	}

	/**
	 * �޸Ļ�Ա
	 * 
	 * @param clientrule
	 * @param rulelog
	 * @return
	 */
	public Boolean updateBill(TSickFeeBill Bill){
		return BillDao.updateBill(Bill);
	}

	/**
	 * ɾ����Ա
	 * 
	 * @param id
	 * @return
	 */
	public Boolean deleteBill(Long id){
		return BillDao.deleteBill(id);
	}

	public BillDao getBillDao() {
		return BillDao;
	}

	public void setBillDao(BillDao BillDao) {
		this.BillDao = BillDao;
	}
}
