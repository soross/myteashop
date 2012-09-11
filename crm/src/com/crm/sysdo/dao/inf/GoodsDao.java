package com.crm.sysdo.dao.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TData;
import com.crm.sysdo.po.TGoods;

/**
 * �����ֵ����Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface GoodsDao {
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
	public Boolean addGoods(TGoods Goods);
	
	/**
	 * ɾ�������ֵ�
	 * @param Goods
	 * @return
	 */
	public Boolean deleteGoods(TGoods Goods);
	
	/**
	 * ���������ֵ�
	 * @param Goods
	 * @return
	 */
	public Boolean updateGoods(TGoods Goods);
	
	/**
	 * ȡ�������ֵ��б�
	 * @return
	 */
	public List searchGoods(TGoods Goods);
	
	/**
	 * ��ѯ�����ֵ����
	 * @param id
	 * @return
	 */
	public TGoods seachGoods(Long id);
	
	
}
