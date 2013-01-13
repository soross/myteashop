package com.crm.sysdo.service.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TGoods;
import com.crm.sysdo.po.TGoodsType;

/**
 * �����ֵ����Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface GoodsTypeServiceDao {
	
	/**
	 * ���
	 * @param data
	 * @return
	 */
	public Boolean addGoodsType(TGoodsType GoodsType);
	
	/**
	 * ɾ��
	 * @param GoodsType
	 * @return
	 */
	public Boolean deleteGoodsType(TGoodsType GoodsType);
	
	/**
	 * ����
	 * @param GoodsType
	 * @return
	 */
	public Boolean updateGoodsType(TGoodsType GoodsType);
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(TGoodsType GoodsType);
	/**
	 * ȡ���б�
	 * @return
	 */
	public List getGoodsTypeList(PageUtil pageUtil ,TGoodsType GoodsType);
	
	/**
	 * ��ѯ����
	 * @param id
	 * @return
	 */
	public TGoodsType getGoodsTypeById(Long id);

}
