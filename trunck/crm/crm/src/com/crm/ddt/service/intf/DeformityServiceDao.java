package com.crm.ddt.service.intf;


import java.util.List;

import com.crm.ddt.po.TDeformity;
import com.crm.page.PageUtil;

/**
 * 数字字典操作Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface DeformityServiceDao {
	
	/**
	 * 添加
	 * @param data
	 * @return
	 */
	public Boolean addDeformity(TDeformity Deformity);
	
	/**
	 * 删除
	 * @param Deformity
	 * @return
	 */
	public Boolean deleteDeformity(TDeformity Deformity);
	
	/**
	 * 更新
	 * @param Deformity
	 * @return
	 */
	public Boolean updateDeformity(TDeformity Deformity);
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TDeformity Deformity);
	/**
	 * 取得列表
	 * @return
	 */
	public List getDeformityList(PageUtil pageUtil ,TDeformity Deformity);
	
	/**
	 * 查询对象
	 * @param id
	 * @return
	 */
	public TDeformity getDeformityById(Long id);
	
	

}
