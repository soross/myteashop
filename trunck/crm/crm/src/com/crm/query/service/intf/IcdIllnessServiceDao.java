package com.crm.query.service.intf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.query.po.TIcdIllness;

/**
 * 数字字典操作Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface IcdIllnessServiceDao {
	
	/**
	 * 添加
	 * @param data
	 * @return
	 */
	public Boolean addIcdIllness(TIcdIllness IcdIllness);
	
	/**
	 * 删除
	 * @param IcdIllness
	 * @return
	 */
	public Boolean deleteIcdIllness(TIcdIllness IcdIllness);
	
	/**
	 * 更新
	 * @param IcdIllness
	 * @return
	 */
	public Boolean updateIcdIllness(TIcdIllness IcdIllness);
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TIcdIllness IcdIllness);
	/**
	 * 取得列表
	 * @return
	 */
	public List getIcdIllnessList(PageUtil pageUtil ,TIcdIllness IcdIllness);
	
	/**
	 * 查询对象
	 * @param id
	 * @return
	 */
	public TIcdIllness getIcdIllnessById(Long id);

}
