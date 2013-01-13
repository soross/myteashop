package com.crm.sysdo.service.impl;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.DisTplDao;
import com.crm.sysdo.po.TDisTpl;
import com.crm.sysdo.service.inf.DisTplServiceDao;

/**
 * �����ֵ����Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class DisTplServiceDaoImpl implements DisTplServiceDao {
	
	private DisTplDao DisTplDao;
	
	

	/**
	 * ���
	 * @param DisTpl
	 * @return
	 */
	public Boolean addDisTpl(TDisTpl DisTpl){		
		return DisTplDao.addDisTpl(DisTpl);
	}
	
	/**
	 * ɾ��
	 * @param DisTpl
	 * @return
	 */
	public Boolean deleteDisTpl(TDisTpl DisTpl){		
		return DisTplDao.deleteDisTpl(DisTpl);
	}
	
	/**
	 * ����
	 * @param DisTpl
	 * @return
	 */
	public Boolean updateDisTpl(TDisTpl DisTpl){
		return DisTplDao.updateDisTpl(DisTpl);
	}
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(TDisTpl DisTpl){
		return DisTplDao.getCount(DisTpl);
	}
	
	/**
	 * ȡ���б�
	 * @return
	 */
	public List getDisTplList(PageUtil pageUtil,TDisTpl DisTpl){
		
		return DisTplDao.getDisTplList(pageUtil,DisTpl);
	}
	
	/**
	 * ��ѯ����
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
