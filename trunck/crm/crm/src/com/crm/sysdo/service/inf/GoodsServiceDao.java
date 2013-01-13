package com.crm.sysdo.service.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TData;
import com.crm.sysdo.po.TGoods;

/**
 * �����ֵ����Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface GoodsServiceDao {
	
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
	public Integer getCount(TGoods goods);
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
