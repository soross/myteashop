package com.crm.op.service.impl;

import java.util.List;

import com.crm.op.dao.intf.ToolinfoPayoutDao;
import com.crm.op.po.TToolinfoPayout;
import com.crm.op.service.intf.ToolinfoPayoutServiceDao;
import com.crm.page.PageUtil;

public class ToolinfoPayoutServiceDaoImpl implements ToolinfoPayoutServiceDao{
	ToolinfoPayoutDao ToolinfoPayoutDao;
	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getToolinfoPayoutCount(){
		return ToolinfoPayoutDao.getToolinfoPayoutCount();		
	}
	
	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getToolinfoPayoutCount(TToolinfoPayout ToolinfoPayout){
		return ToolinfoPayoutDao.getToolinfoPayoutCount(ToolinfoPayout);		
	}

	/**
	 * 取得集合
	 * 
	 * @return
	 */
	public List getToolinfoPayoutList(PageUtil pageUtil){
		return ToolinfoPayoutDao.getToolinfoPayoutList(pageUtil);
	}
	/**
	 * 取得集合
	 * 
	 * @return
	 */
	public List getToolinfoPayoutList(TToolinfoPayout ToolinfoPayout, PageUtil pageUtil){
		return ToolinfoPayoutDao.getToolinfoPayoutList(ToolinfoPayout,pageUtil);
	}

	public List getToolinfoPayoutList(){
		return ToolinfoPayoutDao.getToolinfoPayoutList();
	}

	public TToolinfoPayout getToolinfoPayoutByID(Long id){
		return ToolinfoPayoutDao.getToolinfoPayoutByID(id);
	}

	/**
	 * 会员
	 * 
	 * @param ToolinfoPayout
	 * @return
	 */
	public Boolean addToolinfoPayout(TToolinfoPayout ToolinfoPayout){
		return ToolinfoPayoutDao.addToolinfoPayout(ToolinfoPayout);
	}

	/**
	 * 取得序列的下一个ID
	 * 
	 * @return
	 */
	public Integer getSeqNextValue(){
		return ToolinfoPayoutDao.getSeqNextValue();
	}

	/**
	 * 修改会员
	 * 
	 * @param clientrule
	 * @param rulelog
	 * @return
	 */
	public Boolean updateToolinfoPayout(TToolinfoPayout ToolinfoPayout){
		return ToolinfoPayoutDao.updateToolinfoPayout(ToolinfoPayout);
	}

	/**
	 * 删除会员
	 * 
	 * @param id
	 * @return
	 */
	public Boolean deleteToolinfoPayout(Long id){
		return ToolinfoPayoutDao.deleteToolinfoPayout(id);
	}

	public ToolinfoPayoutDao getToolinfoPayoutDao() {
		return ToolinfoPayoutDao;
	}

	public void setToolinfoPayoutDao(ToolinfoPayoutDao ToolinfoPayoutDao) {
		this.ToolinfoPayoutDao = ToolinfoPayoutDao;
	}

	public Integer getToolinfoChargingPriceCount(TToolinfoPayout ToolinfoPayout) {
		return this.ToolinfoPayoutDao.getToolinfoChargingPriceCount(ToolinfoPayout);
	}

	public List getToolinfoChargingPriceList(TToolinfoPayout ToolinfoPayout,
			PageUtil pageUtil) {

		return this.ToolinfoPayoutDao.getToolinfoChargingPriceList(ToolinfoPayout, pageUtil);
	}

	public Integer getToolinfoPayPriceCount(TToolinfoPayout ToolinfoPayout) {
		return this.ToolinfoPayoutDao.getToolinfoPayPriceCount(ToolinfoPayout);
	}

	public List getToolinfoPayPriceList(TToolinfoPayout ToolinfoPayout,
			PageUtil pageUtil) {
		return this.ToolinfoPayoutDao.getToolinfoPayPriceList(ToolinfoPayout, pageUtil);
	}
}
