package com.crm.stafffee.service.impl;

import java.util.List;

import com.crm.page.PageUtil;
import com.crm.stafffee.dao.intf.RatioDao;
import com.crm.stafffee.po.TStaffGetfee;
import com.crm.stafffee.service.intf.RatioServiceDao;

public class RatioServiceDaoImpl implements RatioServiceDao{
	RatioDao RatioDao;
	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getRatioCount(){
		return RatioDao.getRatioCount();		
	}
	
	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getRatioCount(TStaffGetfee Ratio){
		return RatioDao.getRatioCount(Ratio);		
	}

	/**
	 * 取得集合
	 * 
	 * @return
	 */
	public List getRatioList(PageUtil pageUtil){
		return RatioDao.getRatioList(pageUtil);
	}
	/**
	 * 取得集合
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
	 * 会员
	 * 
	 * @param Ratio
	 * @return
	 */
	public Boolean addRatio(TStaffGetfee Ratio){
		return RatioDao.addRatio(Ratio);
	}

	/**
	 * 取得序列的下一个ID
	 * 
	 * @return
	 */
	public Integer getSeqNextValue(){
		return RatioDao.getSeqNextValue();
	}

	/**
	 * 修改会员
	 * 
	 * @param clientrule
	 * @param rulelog
	 * @return
	 */
	public Boolean updateRatio(TStaffGetfee Ratio){
		return RatioDao.updateRatio(Ratio);
	}

	/**
	 * 删除会员
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
