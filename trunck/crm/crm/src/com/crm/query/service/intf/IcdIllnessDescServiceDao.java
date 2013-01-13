package com.crm.query.service.intf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.query.po.TIcdIllnessDesc;

/**
 * 数字字典操作Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface IcdIllnessDescServiceDao {
	
	/**
	 * 添加
	 * @param data
	 * @return
	 */
	public Boolean addIcdIllnessDesc(TIcdIllnessDesc IcdIllnessDesc);
	
	/**
	 * 删除
	 * @param IcdIllnessDesc
	 * @return
	 */
	public Boolean deleteIcdIllnessDesc(TIcdIllnessDesc IcdIllnessDesc);
	
	/**
	 * 更新
	 * @param IcdIllnessDesc
	 * @return
	 */
	public Boolean updateIcdIllnessDesc(TIcdIllnessDesc IcdIllnessDesc);
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TIcdIllnessDesc IcdIllnessDesc);
	/**
	 * 取得列表
	 * @return
	 */
	public List getIcdIllnessDescList(PageUtil pageUtil ,TIcdIllnessDesc IcdIllnessDesc);
	
	/**
	 * 查询对象
	 * @param id
	 * @return
	 */
	public TIcdIllnessDesc getIcdIllnessDescById(Long id);

}
