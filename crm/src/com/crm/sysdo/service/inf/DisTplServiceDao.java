package com.crm.sysdo.service.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TDisTpl;

/**
 * �����ֵ����Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface DisTplServiceDao {
	
	/**
	 * ���
	 * @param data
	 * @return
	 */
	public Boolean addDisTpl(TDisTpl DisTpl);
	
	/**
	 * ɾ��
	 * @param DisTpl
	 * @return
	 */
	public Boolean deleteDisTpl(TDisTpl DisTpl);
	
	/**
	 * ����
	 * @param DisTpl
	 * @return
	 */
	public Boolean updateDisTpl(TDisTpl DisTpl);
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(TDisTpl DisTpl);
	/**
	 * ȡ���б�
	 * @return
	 */
	public List getDisTplList(PageUtil pageUtil ,TDisTpl DisTpl);
	
	/**
	 * ��ѯ����
	 * @param id
	 * @return
	 */
	public TDisTpl getDisTplById(Long id);
	
	

}
