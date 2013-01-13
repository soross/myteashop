package com.crm.ddt.dao.intf;


import java.util.List;

import com.crm.ddt.po.TMedical;
import com.crm.page.PageUtil;

/**
 * 数字字典操作Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface MedicalDao {
	/**
	 * 添加
	 * @param data
	 * @return
	 */
	public Boolean addMedical(TMedical Medical);
	
	/**
	 * 删除
	 * @param Medical
	 * @return
	 */
	public Boolean deleteMedical(TMedical Medical);
	
	/**
	 * 更新
	 * @param Medical
	 * @return
	 */
	public Boolean updateMedical(TMedical Medical);
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TMedical Medical);
	/**
	 * 取得列表
	 * @return
	 */
	public List getMedicalList(PageUtil pageUtil ,TMedical Medical);
	
	/**
	 * 查询对象
	 * @param id
	 * @return
	 */
	public TMedical getMedicalById(Long id);
	
	
}
