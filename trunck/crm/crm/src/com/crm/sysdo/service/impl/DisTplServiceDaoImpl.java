package com.crm.sysdo.service.impl;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.DisTplDao;
import com.crm.sysdo.po.TDisTpl;
import com.crm.sysdo.service.inf.DisTplServiceDao;

/**
 * 数字字典操作Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class DisTplServiceDaoImpl implements DisTplServiceDao {
	
	private DisTplDao DisTplDao;
	
	

	/**
	 * 添加
	 * @param DisTpl
	 * @return
	 */
	public Boolean addDisTpl(TDisTpl DisTpl){		
		return DisTplDao.addDisTpl(DisTpl);
	}
	
	/**
	 * 删除
	 * @param DisTpl
	 * @return
	 */
	public Boolean deleteDisTpl(TDisTpl DisTpl){		
		return DisTplDao.deleteDisTpl(DisTpl);
	}
	
	/**
	 * 更新
	 * @param DisTpl
	 * @return
	 */
	public Boolean updateDisTpl(TDisTpl DisTpl){
		return DisTplDao.updateDisTpl(DisTpl);
	}
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TDisTpl DisTpl){
		return DisTplDao.getCount(DisTpl);
	}
	
	/**
	 * 取得列表
	 * @return
	 */
	public List getDisTplList(PageUtil pageUtil,TDisTpl DisTpl){
		
		return DisTplDao.getDisTplList(pageUtil,DisTpl);
	}
	
	/**
	 * 查询对象
	 * @param id
	 * @return
	 */
	public TDisTpl getDisTplById(Long id){
		return DisTplDao.getDisTplById(id);
	}
	

	public DisTplDao getDisTplDao() {
		return DisTplDao;
	}

	public void setDisTplDao(DisTplDao DisTplDao) {
		this.DisTplDao = DisTplDao;
	}
	
	

}
