package com.crm.ddt.service.impl;

import java.util.List;

import com.crm.ddt.dao.intf.HisDao;
import com.crm.ddt.po.THis;
import com.crm.ddt.service.intf.HisServiceDao;
import com.crm.page.PageUtil;

/**
 * 数字字典操作Service
 * 
 * @author wjc
 * 
 * 10.22 am
 * 
 */
public class HisServiceDaoImpl implements HisServiceDao {

	private HisDao HisDao;

	/**
	 * 添加
	 * 
	 * @param His
	 * @return
	 */
	public Boolean addHis(THis His) {
		return HisDao.addHis(His);
	}

	/**
	 * 删除
	 * 
	 * @param His
	 * @return
	 */
	public Boolean deleteHis(THis His) {
		return HisDao.deleteHis(His);
	}

	/**
	 * 更新
	 * 
	 * @param His
	 * @return
	 */
	public Boolean updateHis(THis His) {
		return HisDao.updateHis(His);
	}

	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getCount(THis His) {
		return HisDao.getCount(His);
	}

	/**
	 * 取得列表
	 * 
	 * @return
	 */
	public List getHisList(PageUtil pageUtil, THis His) {

		return HisDao.getHisList(pageUtil, His);
	}

	/**
	 * 查询对象
	 * 
	 * @param id
	 * @return
	 */
	public THis getHisById(Long id) {
		return HisDao.getHisById(id);
	}

	public HisDao getHisDao() {
		return HisDao;
	}

	public void setHisDao(HisDao HisDao) {
		this.HisDao = HisDao;
	}

}
