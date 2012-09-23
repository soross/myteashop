package com.crm.ddt.service.intf;


import java.util.List;

import com.crm.ddt.po.THis;
import com.crm.page.PageUtil;

/**
 * 数字字典操作Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface HisServiceDao {
	
	/**
	 * 添加
	 * @param data
	 * @return
	 */
	public Boolean addHis(THis His);
	
	/**
	 * 删除
	 * @param His
	 * @return
	 */
	public Boolean deleteHis(THis His);
	
	/**
	 * 更新
	 * @param His
	 * @return
	 */
	public Boolean updateHis(THis His);
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(THis His);
	/**
	 * 取得列表
	 * @return
	 */
	public List getHisList(PageUtil pageUtil ,THis His);
	
	/**
	 * 查询对象
	 * @param id
	 * @return
	 */
	public THis getHisById(Long id);
	
	

}
