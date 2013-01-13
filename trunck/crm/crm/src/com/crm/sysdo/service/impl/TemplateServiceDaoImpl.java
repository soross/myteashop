package com.crm.sysdo.service.impl;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.TemplateDao;
import com.crm.sysdo.po.TTemplate;
import com.crm.sysdo.service.inf.TemplateServiceDao;

/**
 * �����ֵ����Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class TemplateServiceDaoImpl implements TemplateServiceDao {
	
	private TemplateDao TemplateDao;
	
	

	/**
	 * ���
	 * @param Template
	 * @return
	 */
	public Boolean addTemplate(TTemplate Template){		
		return TemplateDao.addTemplate(Template);
	}
	
	/**
	 * ɾ��
	 * @param Template
	 * @return
	 */
	public Boolean deleteTemplate(TTemplate Template){		
		return TemplateDao.deleteTemplate(Template);
	}
	
	/**
	 * ����
	 * @param Template
	 * @return
	 */
	public Boolean updateTemplate(TTemplate Template){
		return TemplateDao.updateTemplate(Template);
	}
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(TTemplate Template){
		return TemplateDao.getCount(Template);
	}
	
	/**
	 * ȡ���б�
	 * @return
	 */
	public List getTemplateList(PageUtil pageUtil,TTemplate Template){
		
		return TemplateDao.getTemplateList(pageUtil,Template);
	}
	
	/**
	 * ��ѯ����
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
