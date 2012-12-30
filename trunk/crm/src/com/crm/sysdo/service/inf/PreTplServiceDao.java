package com.crm.sysdo.service.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TPreTpl;

/**
 * 数字字典操作Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface PreTplServiceDao {
	
	/**
	 * 添加
	 * @param data
	 * @return
	 */
	public Boolean addPreTpl(TPreTpl PreTpl);
	
	/**
	 * 删除
	 * @param PreTpl
	 * @return
	 */
	public Boolean deletePreTpl(TPreTpl PreTpl);
	
	/**
	 * 更新
	 * @param PreTpl
	 * @return
	 */
	public Boolean updatePreTpl(TPreTpl PreTpl);
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TPreTpl PreTpl);
	/**
	 * 取得列表
	 * @return
	 */
	public List getPreTplList(PageUtil pageUtil ,TPreTpl PreTpl);
	
	/**
	 * 查询对象
	 * @param id
	 * @return
	 */
	public TPreTpl getPreTplById(Long id);
	
	

}
