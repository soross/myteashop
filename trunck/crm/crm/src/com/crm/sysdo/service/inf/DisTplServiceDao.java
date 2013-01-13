package com.crm.sysdo.service.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TDisTpl;

/**
 * 数字字典操作Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface DisTplServiceDao {
	
	/**
	 * 添加
	 * @param data
	 * @return
	 */
	public Boolean addDisTpl(TDisTpl DisTpl);
	
	/**
	 * 删除
	 * @param DisTpl
	 * @return
	 */
	public Boolean deleteDisTpl(TDisTpl DisTpl);
	
	/**
	 * 更新
	 * @param DisTpl
	 * @return
	 */
	public Boolean updateDisTpl(TDisTpl DisTpl);
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TDisTpl DisTpl);
	/**
	 * 取得列表
	 * @return
	 */
	public List getDisTplList(PageUtil pageUtil ,TDisTpl DisTpl);
	
	/**
	 * 查询对象
	 * @param id
	 * @return
	 */
	public TDisTpl getDisTplById(Long id);
	
	

}
