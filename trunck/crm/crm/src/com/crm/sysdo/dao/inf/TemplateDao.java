package com.crm.sysdo.dao.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TTemplate;

/**
 * �����ֵ����Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface TemplateDao {
	/**
	 * ���
	 * @param data
	 * @return
	 */
	public Boolean addTemplate(TTemplate Template);
	
	/**
	 * ɾ��
	 * @param Template
	 * @return
	 */
	public Boolean deleteTemplate(TTemplate Template);
	
	/**
	 * ����
	 * @param Template
	 * @return
	 */
	public Boolean updateTemplate(TTemplate Template);
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(TTemplate Template);
	/**
	 * ȡ���б�
	 * @return
	 */
	public List getTemplateList(PageUtil pageUtil ,TTemplate Template);
	
	/**
	 * ��ѯ����
	 * @param id
	 * @return
	 */
	public TTemplate getTemplateById(Long id);
	
	
}
