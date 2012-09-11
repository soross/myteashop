package com.crm.sysdo.service.inf;


import java.util.List;

import com.crm.page.PageUtil;
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
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount();
	/**
	 * 添加数据字典
	 * @param data
	 * @return
	 */
	public Boolean addRegisterType(TRegisterType RegisterType);
	
	/**
	 * 删除数据字典
	 * @param RegisterType
	 * @return
	 */
	public Boolean deleteRegisterType(TRegisterType RegisterType);
	
	/**
	 * 更新数据字典
	 * @param RegisterType
	 * @return
	 */
	public Boolean updateRegisterType(TRegisterType RegisterType);
	
	/**
	 * 取得数据字典列表
	 * @return
	 */
	public List searchRegisterType(TRegisterType RegisterType);
	
	/**
	 * 查询数据字典对象
	 * @param id
	 * @return
	 */
	public TRegisterType seachRegisterType(Long id);
	
	/**
	 * 根据父类ID查询小类
	 * @param pid
	 * @return
	 */
	public List searchSonRegisterType(Long pid);
	
	/**
	 * 根据小类查询父类对象
	 * 
	 * @return
	 */
	public List searchParentRegisterType(PageUtil pageUtil);
	
	/**
	 * 根据Pid分页
	 * @param pid
	 * @return
	 */
	public List searchPageRegisterType(Long pid);

}
