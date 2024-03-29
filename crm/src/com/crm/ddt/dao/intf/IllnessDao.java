package com.crm.ddt.dao.intf;


import java.util.List;

import com.crm.ddt.po.THis;
import com.crm.ddt.po.TIllness;
import com.crm.ddt.po.TProve;
import com.crm.page.PageUtil;
import com.crm.sysdo.po.TGoods;

/**
 * 数字字典操作Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface IllnessDao {
	/**
	 * 添加
	 * @param data
	 * @return
	 */
	public Boolean addIllness(TIllness Illness);
	
	/**
	 * 删除
	 * @param Illness
	 * @return
	 */
	public Boolean deleteIllness(TIllness Illness);
	
	/**
	 * 更新
	 * @param Illness
	 * @return
	 */
	public Boolean updateIllness(TIllness Illness);
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TIllness Illness);
	/**
	 * 取得列表
	 * @return
	 */
	public List getIllnessList(PageUtil pageUtil ,TIllness Illness);
	
	/**
	 * 查询对象
	 * @param id
	 * @return
	 */
	public TIllness getIllnessById(Long id);
	
	
}
