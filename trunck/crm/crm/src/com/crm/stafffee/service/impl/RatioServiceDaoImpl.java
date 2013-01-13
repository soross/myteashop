package com.crm.stafffee.service.impl;

import java.util.List;

import com.crm.page.PageUtil;
import com.crm.stafffee.dao.intf.RatioDao;
import com.crm.stafffee.po.TStaffGetfee;
import com.crm.stafffee.service.intf.RatioServiceDao;

public class RatioServiceDaoImpl implements RatioServiceDao{
	RatioDao RatioDao;
	/**
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getRatioCount(){
		return RatioDao.getRatioCount();		
	}
	
	/**
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getRatioCount(TStaffGetfee Ratio){
		return RatioDao.getRatioCount(Ratio);		
	}

	/**
	 * ȡ�ü���
	 * 
	 * @return
	 */
	public List getRatioList(PageUtil pageUtil){
		return RatioDao.getRatioList(pageUtil);
	}
	/**
	 * ȡ�ü���
	 * 
	 * @return
	 */
	public List getRatioList(TStaffGetfee Ratio, PageUtil pageUtil){
		return RatioDao.getRatioList(Ratio,pageUtil);
	}

	public List getRatioList(){
		return RatioDao.getRatioList();
	}

	public TStaffGetfee getRatioByID(Long id){
		return RatioDao.getRatioByID(id);
	}

	/**
	 * ��Ա
	 * 
	 * @param Ratio
	 * @return
	 */
	public Boolean addRatio(TStaffGetfee Ratio){
		return RatioDao.addRatio(Ratio);
	}

	/**
	 * ȡ�����е���һ��ID
	 * 
	 * @return
	 */
	public Integer getSeqNextValue(){
		return RatioDao.getSeqNextValue();
	}

	/**
	 * �޸Ļ�Ա
	 * 
	 * @param clientrule
	 * @param rulelog
	 * @return
	 */
	public Boolean updateRatio(TStaffGetfee Ratio){
		return RatioDao.updateRatio(Ratio);
	}

	/**
	 * ɾ����Ա
	 * 
	 * @param id
	 * @return
	 */
	public Boolean deleteRatio(Long id){
		return RatioDao.deleteRatio(id);
	}

	public RatioDao getRatioDao() {
		return RatioDao;
	}

	public void setRatioDao(RatioDao RatioDao) {
		this.RatioDao = RatioDao;
	}
}
