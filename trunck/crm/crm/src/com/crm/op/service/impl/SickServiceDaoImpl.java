package com.crm.op.service.impl;

import java.util.List;

import com.crm.op.dao.intf.SickDao;
import com.crm.op.po.TSick;
import com.crm.op.service.intf.SickServiceDao;
import com.crm.page.PageUtil;

public class SickServiceDaoImpl implements SickServiceDao{
	SickDao SickDao;
	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getSickCount(){
		return SickDao.getSickCount();		
	}
	
	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getSickCount(TSick Sick){
		return SickDao.getSickCount(Sick);		
	}

	/**
	 * 取得集合
	 * 
	 * @return
	 */
	public List getSickList(PageUtil pageUtil){
		return SickDao.getSickList(pageUtil);
	}
	/**
	 * 取得集合
	 * 
	 * @return
	 */
	public List getSickList(TSick Sick, PageUtil pageUtil){
		return SickDao.getSickList(Sick,pageUtil);
	}

	public List getSickList(){
		return SickDao.getSickList();
	}

	public TSick getSickByID(Long id){
		return SickDao.getSickByID(id);
	}

	/**
	 * 会员
	 * 
	 * @param Sick
	 * @return
	 */
	public Boolean addSick(TSick Sick){
		return SickDao.addSick(Sick);
	}

	/**
	 * 取得序列的下一个ID
	 * 
	 * @return
	 */
	public Integer getSeqNextValue(){
		return SickDao.getSeqNextValue();
	}

	/**
	 * 修改会员
	 * 
	 * @param clientrule
	 * @param rulelog
	 * @return
	 */
	public Boolean updateSick(TSick Sick){
		return SickDao.updateSick(Sick);
	}

	/**
	 * 删除会员
	 * 
	 * @param id
	 * @return
	 */
	public Boolean deleteSick(Long id){
		return SickDao.deleteSick(id);
	}

	public SickDao getSickDao() {
		return SickDao;
	}

	public void setSickDao(SickDao SickDao) {
		this.SickDao = SickDao;
	}
}
