package com.crm.sysdo.dao.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TData;
import com.crm.sysdo.po.TGoods;
import com.crm.sysdo.po.TToolinfo;

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
	 * ���
	 * @param data
	 * @return
	 */
	public Boolean addGoods(TGoods Goods);
	
	/**
	 * ɾ��
	 * @param Goods
	 * @return
	 */
	public Boolean deleteGoods(TGoods Goods);
	
	/**
	 * ����
	 * @param Goods
	 * @return
	 */
	public Boolean updateGoods(TGoods Goods);
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(TGoods Goods);
	/**
	 * ȡ���б�
	 * @return
	 */
	public List getGoodsList(PageUtil pageUtil ,TGoods Goods);
	
	/**
	 * ��ѯ����
	 * @param id
	 * @return
	 */
	public TGoods getGoodsById(Long id);
	
	
}
