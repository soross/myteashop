package com.crm.sysdo.service.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TGoods;
import com.crm.sysdo.po.TRegisterType;

/**
 * 数字字典操作Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface RegisterTypeServiceDao {
	
	/**
	 * 添加
	 * @param data
	 * @return
	 */
	public Boolean addRegisterType(TRegisterType RegisterType);
	
	/**
	 * 删除
	 * @param RegisterType
	 * @return
	 */
	public Boolean deleteRegisterType(TRegisterType RegisterType);
	
	/**
	 * 更新
	 * @param RegisterType
	 * @return
	 */
	public Boolean updateRegisterType(TRegisterType RegisterType);
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TRegisterType RegisterType);
	/**
	 * 取得列表
	 * @return
	 */
	public List getRegisterTypeList(PageUtil pageUtil ,TRegisterType RegisterType);
	
	/**
	 * 查询对象
	 * @param id
	 * @return
	 */
	public TRegisterType getRegisterTypeById(Long id);

}
