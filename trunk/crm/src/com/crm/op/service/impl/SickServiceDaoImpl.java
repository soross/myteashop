package com.crm.op.service.impl;

import java.util.List;

import com.crm.op.dao.intf.SickDao;
import com.crm.op.po.TSick;
import com.crm.op.service.intf.SickServiceDao;
import com.crm.page.PageUtil;

public class SickServiceDaoImpl implements SickServiceDao{
	SickDao SickDao;
	/**
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getSickCount(){
		return SickDao.getSickCount();		
	}
	
	/**
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getSickCount(TSick Sick){
		return SickDao.getSickCount(Sick);		
	}

	/**
	 * ȡ�ü���
	 * 
	 * @return
	 */
	public List getSickList(PageUtil pageUtil){
		return SickDao.getSickList(pageUtil);
	}
	/**
	 * ȡ�ü���
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
	 * ��Ա
	 * 
	 * @param Sick
	 * @return
	 */
	public Boolean addSick(TSick Sick){
		return SickDao.addSick(Sick);
	}

	/**
	 * ȡ�����е���һ��ID
	 * 
	 * @return
	 */
	public Integer getSeqNextValue(){
		return SickDao.getSeqNextValue();
	}

	/**
	 * �޸Ļ�Ա
	 * 
	 * @param clientrule
	 * @param rulelog
	 * @return
	 */
	public Boolean updateSick(TSick Sick){
		return SickDao.updateSick(Sick);
	}

	/**
	 * ɾ����Ա
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
