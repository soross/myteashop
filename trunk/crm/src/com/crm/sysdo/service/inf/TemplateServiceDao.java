package com.crm.sysdo.service.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TTemplate;

/**
 * 数字字典操作Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface TemplateServiceDao {
	
	/**
	 * 添加
	 * @param data
	 * @return
	 */
	public Boolean addTemplate(TTemplate Template);
	
	/**
	 * 删除
	 * @param Template
	 * @return
	 */
	public Boolean deleteTemplate(TTemplate Template);
	
	/**
	 * 更新
	 * @param Template
	 * @return
	 */
	public Boolean updateTemplate(TTemplate Template);
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TTemplate Template);
	/**
	 * 取得列表
	 * @return
	 */
	public List getTemplateList(PageUtil pageUtil ,TTemplate Template);
	
	/**
	 * 查询对象
	 * @param id
	 * @return
	 */
	public TTemplate getTemplateById(Long id);
	
	

}
