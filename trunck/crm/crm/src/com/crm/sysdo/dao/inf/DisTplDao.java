package com.crm.sysdo.dao.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TDisTpl;

/**
 * 数字字典操作Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface DisTplDao {
	/**
	 * 添加
	 * @param data
	 * @return
	 */
	public Boolean addDisTpl(TDisTpl Distpl);
	
	/**
	 * 删除
	 * @param Distpl
	 * @return
	 */
	public Boolean deleteDisTpl(TDisTpl Distpl);
	
	/**
	 * 更新
	 * @param Distpl
	 * @return
	 */
	public Boolean updateDisTpl(TDisTpl Distpl);
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TDisTpl Distpl);
	/**
	 * 取得列表
	 * @return
	 */
	public List getDisTplList(PageUtil pageUtil ,TDisTpl Distpl);
	
	/**
	 * 查询对象
	 * @param id
	 * @return
	 */
	public TDisTpl getDisTplById(Long id);
	
	
}
