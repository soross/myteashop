package com.crm.sysdo.dao.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TDisTpl;

/**
 * �����ֵ����Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface DisTplDao {
	/**
	 * ���
	 * @param data
	 * @return
	 */
	public Boolean addDisTpl(TDisTpl Distpl);
	
	/**
	 * ɾ��
	 * @param Distpl
	 * @return
	 */
	public Boolean deleteDisTpl(TDisTpl Distpl);
	
	/**
	 * ����
	 * @param Distpl
	 * @return
	 */
	public Boolean updateDisTpl(TDisTpl Distpl);
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(TDisTpl Distpl);
	/**
	 * ȡ���б�
	 * @return
	 */
	public List getDisTplList(PageUtil pageUtil ,TDisTpl Distpl);
	
	/**
	 * ��ѯ����
	 * @param id
	 * @return
	 */
	public TDisTpl getDisTplById(Long id);
	
	
}
