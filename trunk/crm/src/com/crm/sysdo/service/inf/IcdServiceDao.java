package com.crm.sysdo.service.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TIcd;

/**
 * 数字字典操作Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface IcdServiceDao {
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount();
	/**
	 * 添加数据字典
	 * @param data
	 * @return
	 */
	public Boolean addIcd(TIcd Icd);
	
	/**
	 * 删除数据字典
	 * @param Icd
	 * @return
	 */
	public Boolean deleteIcd(TIcd Icd);
	
	/**
	 * 更新数据字典
	 * @param Icd
	 * @return
	 */
	public Boolean updateIcd(TIcd Icd);
	
	/**
	 * 取得数据字典列表
	 * @return
	 */
	public List searchIcd(TIcd Icd);
	
	/**
	 * 查询数据字典对象
	 * @param id
	 * @return
	 */
	public TIcd seachIcd(Long id);
	
	/**
	 * 根据父类ID查询小类
	 * @param pid
	 * @return
	 */
	public List searchSonIcd(Long pid);
	
	/**
	 * 根据小类查询父类对象
	 * 
	 * @return
	 */
	public List searchParentIcd(PageUtil pageUtil);
	
	/**
	 * 根据Pid分页
	 * @param pid
	 * @return
	 */
	public List searchPageIcd(Long pid);

}
