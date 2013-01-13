package com.crm.sysdo.service.impl;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.TemplateDao;
import com.crm.sysdo.po.TTemplate;
import com.crm.sysdo.service.inf.TemplateServiceDao;

/**
 * 数字字典操作Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class TemplateServiceDaoImpl implements TemplateServiceDao {
	
	private TemplateDao TemplateDao;
	
	

	/**
	 * 添加
	 * @param Template
	 * @return
	 */
	public Boolean addTemplate(TTemplate Template){		
		return TemplateDao.addTemplate(Template);
	}
	
	/**
	 * 删除
	 * @param Template
	 * @return
	 */
	public Boolean deleteTemplate(TTemplate Template){		
		return TemplateDao.deleteTemplate(Template);
	}
	
	/**
	 * 更新
	 * @param Template
	 * @return
	 */
	public Boolean updateTemplate(TTemplate Template){
		return TemplateDao.updateTemplate(Template);
	}
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TTemplate Template){
		return TemplateDao.getCount(Template);
	}
	
	/**
	 * 取得列表
	 * @return
	 */
	public List getTemplateList(PageUtil pageUtil,TTemplate Template){
		
		return TemplateDao.getTemplateList(pageUtil,Template);
	}
	
	/**
	 * 查询对象
	 * @param id
	 * @return
	 */
	public TTemplate getTemplateById(Long id){
		return TemplateDao.getTemplateById(id);
	}
	

	public TemplateDao getTemplateDao() {
		return TemplateDao;
	}

	public void setTemplateDao(TemplateDao TemplateDao) {
		this.TemplateDao = TemplateDao;
	}
	
	

}
