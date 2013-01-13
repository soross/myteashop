package com.crm.sysdo.service.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TCollect;
import com.crm.sysdo.po.TData;
import com.crm.sysdo.po.TFile;
import com.crm.sysdo.po.TSickbed;

/**
 * 数字字典操作Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface FileServiceDao {
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TFile File);
	/**
	 * 添加数据字典
	 * @param data
	 * @return
	 */
	public Boolean addFile(TFile File);
	
	/**
	 * 删除数据字典
	 * @param File
	 * @return
	 */
	public Boolean deleteFile(TFile File);
	
	/**
	 * 更新数据字典
	 * @param File
	 * @return
	 */
	public Boolean updateFile(TFile File);
	
	/**
	 * 取得数据字典列表
	 * @return
	 */
	public List searchFile(TFile File);
	
	/**
	 * 查询数据字典对象
	 * @param id
	 * @return
	 */
	public TFile seachFile(Long id);
	
	public List getFileList(final PageUtil pageUtil,final TFile File);
	
	

}
