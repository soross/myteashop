package com.crm.sysdo.service.impl;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.PreTplDao;
import com.crm.sysdo.po.TPreTpl;
import com.crm.sysdo.service.inf.PreTplServiceDao;

/**
 * 数字字典操作Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class PreTplServiceDaoImpl implements PreTplServiceDao {
	
	private PreTplDao PreTplDao;
	
	

	/**
	 * 添加
	 * @param PreTpl
	 * @return
	 */
	public Boolean addPreTpl(TPreTpl PreTpl){		
		return PreTplDao.addPreTpl(PreTpl);
	}
	
	/**
	 * 删除
	 * @param PreTpl
	 * @return
	 */
	public Boolean deletePreTpl(TPreTpl PreTpl){		
		return PreTplDao.deletePreTpl(PreTpl);
	}
	
	/**
	 * 更新
	 * @param PreTpl
	 * @return
	 */
	public Boolean updatePreTpl(TPreTpl PreTpl){
		return PreTplDao.updatePreTpl(PreTpl);
	}
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TPreTpl PreTpl){
		return PreTplDao.getCount(PreTpl);
	}
	
	/**
	 * 取得列表
	 * @return
	 */
	public List getPreTplList(PageUtil pageUtil,TPreTpl PreTpl){
		
		return PreTplDao.getPreTplList(pageUtil,PreTpl);
	}
	
	/**
	 * 查询对象
	 * @param id
	 * @return
	 */
	public TPreTpl getPreTplById(Long id){
		return PreTplDao.getPreTplById(id);
	}
	

	public PreTplDao getPreTplDao() {
		return PreTplDao;
	}

	public void setPreTplDao(PreTplDao PreTplDao) {
		this.PreTplDao = PreTplDao;
	}
	
	

}
