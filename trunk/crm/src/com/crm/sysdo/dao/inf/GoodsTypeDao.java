package com.crm.sysdo.dao.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TGoodsType;

/**
 * �����ֵ����Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface GoodsTypeDao {
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount();
	/**
	 * ��������ֵ�
	 * @param data
	 * @return
	 */
	public Boolean addGoodsType(TGoodsType GoodsType);
	
	/**
	 * ɾ�������ֵ�
	 * @param GoodsType
	 * @return
	 */
	public Boolean deleteGoodsType(TGoodsType GoodsType);
	
	/**
	 * ���������ֵ�
	 * @param GoodsType
	 * @return
	 */
	public Boolean updateGoodsType(TGoodsType GoodsType);
	
	/**
	 * ȡ�������ֵ��б�
	 * @return
	 */
	public List searchGoodsType(TGoodsType GoodsType);
	
	/**
	 * ��ѯ�����ֵ����
	 * @param id
	 * @return
	 */
	public TGoodsType seachGoodsType(Long id);
	
	/**
	 * ���ݸ���ID��ѯС��
	 * @param pid
	 * @return
	 */
	public List searchSonGoodsType(Long pid);
	
	/**
	 * ����С���ѯ�������
	 * @param id
	 * @return
	 */
	public List searchParentGoodsType(PageUtil pageUtil);
	
	/**
	 * ����Pid��ҳ
	 * @param pid
	 * @return
	 */
	public List searchPageGoodsType(Long pid);
}
