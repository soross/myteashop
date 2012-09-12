package com.crm.sysdo.dao.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TIcd;
import com.crm.sysdo.po.TToolinfo;

/**
 * 数字字典操作Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface IcdDao {
	/**
	 * 添加
	 * @param data
	 * @return
	 */
	public Boolean addIcd(TIcd Icd);
	
	/**
	 * 删除
	 * @param Icd
	 * @return
	 */
	public Boolean deleteIcd(TIcd Icd);
	
	/**
	 * 更新
	 * @param Icd
	 * @return
	 */
	public Boolean updateIcd(TIcd Icd);
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TIcd Icd);
	/**
	 * 取得列表
	 * @return
	 */
	public List getIcdList(PageUtil pageUtil ,TIcd Icd);
	
	/**
	 * 查询对象
	 * @param id
	 * @return
	 */
	public TIcd getIcdById(Long id);
}
