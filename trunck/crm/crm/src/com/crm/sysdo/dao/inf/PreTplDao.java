package com.crm.sysdo.dao.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TPreTpl;

/**
 * �����ֵ����Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface PreTplDao {
	/**
	 * ���
	 * @param data
	 * @return
	 */
	public Boolean addPreTpl(TPreTpl PreTpl);
	
	/**
	 * ɾ��
	 * @param PreTpl
	 * @return
	 */
	public Boolean deletePreTpl(TPreTpl PreTpl);
	
	/**
	 * ����
	 * @param PreTpl
	 * @return
	 */
	public Boolean updatePreTpl(TPreTpl PreTpl);
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(TPreTpl PreTpl);
	/**
	 * ȡ���б�
	 * @return
	 */
	public List getPreTplList(PageUtil pageUtil ,TPreTpl PreTpl);
	
	/**
	 * ��ѯ����
	 * @param id
	 * @return
	 */
	public TPreTpl getPreTplById(Long id);
	
	
}
