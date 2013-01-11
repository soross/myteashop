package com.crm.account.service.impl;

import java.util.List;

import com.crm.account.dao.intf.BillDao;
import com.crm.account.po.TSickFeeBill;
import com.crm.account.service.intf.BillServiceDao;
import com.crm.page.PageUtil;

public class BillServiceDaoImpl implements BillServiceDao{
	BillDao BillDao;
	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getBillCount(){
		return BillDao.getBillCount();		
	}
	
	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getBillCount(TSickFeeBill Bill){
		return BillDao.getBillCount(Bill);		
	}

	/**
	 * 取得集合
	 * 
	 * @return
	 */
	public List getBillList(PageUtil pageUtil){
		return BillDao.getBillList(pageUtil);
	}
	/**
	 * 取得集合
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
	 * 会员
	 * 
	 * @param Bill
	 * @return
	 */
	public Boolean addBill(TSickFeeBill Bill){
		return BillDao.addBill(Bill);
	}

	/**
	 * 取得序列的下一个ID
	 * 
	 * @return
	 */
	public Integer getSeqNextValue(){
		return BillDao.getSeqNextValue();
	}

	/**
	 * 修改会员
	 * 
	 * @param clientrule
	 * @param rulelog
	 * @return
	 */
	public Boolean updateBill(TSickFeeBill Bill){
		return BillDao.updateBill(Bill);
	}

	/**
	 * 删除会员
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
