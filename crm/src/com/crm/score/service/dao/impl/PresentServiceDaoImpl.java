package com.crm.score.service.dao.impl;

import java.util.List;

import com.crm.page.PageUtil;
import com.crm.score.dao.inf.PresentDao;
import com.crm.score.po.TPresent;
import com.crm.score.service.dao.inf.PresentServiceDao;

/**
 * @author lxj
 * 礼品服务层接口实现类
 */
public class PresentServiceDaoImpl implements PresentServiceDao {

	private PresentDao presentDao;
	
	public boolean addPresent(TPresent present) {
		presentDao.addPresent(present);
		return true;
	}
	public int getCount(TPresent present) {
	
		return 	presentDao.getCount(present);
	}

	public TPresent getPresent(Long id) {
		
		return presentDao.getPresent(id);
	}

	public List searchPresent(TPresent present, PageUtil pageUtil) {
		
		return presentDao.searchPresent(present, pageUtil);
	}

	public boolean updatePresent(TPresent present) {
		presentDao.updatePresent(present);
		return false;
	}

	public PresentDao getPresentDao() {
		return presentDao;
	}

	public void setPresentDao(PresentDao presentDao) {
		this.presentDao = presentDao;
	}

	public boolean deletePresents(Long[] ids) {
		presentDao.deletePresents(ids);
		return false;
	}
	
	public int getPresentCount(TPresent present) {
		
		return presentDao.getPresentCount(present);
	}
	public List presentList(TPresent present, PageUtil pageUtil) {
		return presentDao.presentList(present, pageUtil);
	}

}
