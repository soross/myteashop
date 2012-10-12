package com.crm.ddt.dao.intf;


import java.util.List;

import com.crm.ddt.po.THis;
import com.crm.ddt.po.TProve;
import com.crm.page.PageUtil;
import com.crm.sysdo.po.TGoods;

/**
 * 数字字典操作Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface ProveDao {
	/**
	 * 添加
	 * @param data
	 * @return
	 */
	public Boolean addProve(TProve Prove);
	
	/**
	 * 删除
	 * @param Prove
	 * @return
	 */
	public Boolean deleteProve(TProve Prove);
	
	/**
	 * 更新
	 * @param Prove
	 * @return
	 */
	public Boolean updateProve(TProve Prove);
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TProve Prove);
	/**
	 * 取得列表
	 * @return
	 */
	public List getProveList(PageUtil pageUtil ,TProve Prove);
	
	/**
	 * 查询对象
	 * @param id
	 * @return
	 */
	public TProve getProveById(Long id);
	
	
}
