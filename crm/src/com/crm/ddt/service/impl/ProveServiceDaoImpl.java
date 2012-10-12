package com.crm.ddt.service.impl;

import java.util.List;

import com.crm.ddt.dao.intf.HisDao;
import com.crm.ddt.dao.intf.ProveDao;
import com.crm.ddt.po.THis;
import com.crm.ddt.po.TProve;
import com.crm.ddt.service.intf.HisServiceDao;
import com.crm.ddt.service.intf.ProveServiceDao;
import com.crm.page.PageUtil;

/**
 * 数字字典操作Service
 * 
 * @author wjc
 * 
 * 10.22 am
 * 
 */
public class ProveServiceDaoImpl implements ProveServiceDao {

	private ProveDao ProveDao;

	/**
	 * 添加
	 * 
	 * @param Prove
	 * @return
	 */
	public Boolean addProve(TProve Prove) {
		return ProveDao.addProve(Prove);
	}

	/**
	 * 删除
	 * 
	 * @param Prove
	 * @return
	 */
	public Boolean deleteProve(TProve Prove) {
		return ProveDao.deleteProve(Prove);
	}

	/**
	 * 更新
	 * 
	 * @param Prove
	 * @return
	 */
	public Boolean updateProve(TProve Prove) {
		return ProveDao.updateProve(Prove);
	}

	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getCount(TProve Prove) {
		return ProveDao.getCount(Prove);
	}

	/**
	 * 取得列表
	 * 
	 * @return
	 */
	public List getProveList(PageUtil pageUtil, TProve Prove) {

		return ProveDao.getProveList(pageUtil, Prove);
	}

	/**
	 * 查询对象
	 * 
	 * @param id
	 * @return
	 */
	public TProve getProveById(Long id) {
		return ProveDao.getProveById(id);
	}

	public ProveDao getProveDao() {
		return ProveDao;
	}

	public void setProveDao(ProveDao ProveDao) {
		this.ProveDao = ProveDao;
	}

}
