package com.crm.sysdo.service.impl;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.PreTplDao;
import com.crm.sysdo.po.TPreTpl;
import com.crm.sysdo.service.inf.PreTplServiceDao;

/**
 * �����ֵ����Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class PreTplServiceDaoImpl implements PreTplServiceDao {
	
	private PreTplDao PreTplDao;
	
	

	/**
	 * ���
	 * @param PreTpl
	 * @return
	 */
	public Boolean addPreTpl(TPreTpl PreTpl){		
		return PreTplDao.addPreTpl(PreTpl);
	}
	
	/**
	 * ɾ��
	 * @param PreTpl
	 * @return
	 */
	public Boolean deletePreTpl(TPreTpl PreTpl){		
		return PreTplDao.deletePreTpl(PreTpl);
	}
	
	/**
	 * ����
	 * @param PreTpl
	 * @return
	 */
	public Boolean updatePreTpl(TPreTpl PreTpl){
		return PreTplDao.updatePreTpl(PreTpl);
	}
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(TPreTpl PreTpl){
		return PreTplDao.getCount(PreTpl);
	}
	
	/**
	 * ȡ���б�
	 * @return
	 */
	public List getPreTplList(PageUtil pageUtil,TPreTpl PreTpl){
		
		return PreTplDao.getPreTplList(pageUtil,PreTpl);
	}
	
	/**
	 * ��ѯ����
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
