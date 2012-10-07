package com.crm.sysdo.service.impl;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.CollectDao;
import com.crm.sysdo.dao.inf.DataDao;
import com.crm.sysdo.dao.inf.FileDao;
import com.crm.sysdo.po.TCollect;
import com.crm.sysdo.po.TData;
import com.crm.sysdo.po.TFile;
import com.crm.sysdo.po.TSickbed;
import com.crm.sysdo.service.inf.CollectServiceDao;
import com.crm.sysdo.service.inf.DataServiceDao;
import com.crm.sysdo.service.inf.FileServiceDao;

/**
 * 数字字典操作Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class FileServiceDaoImpl implements FileServiceDao {
	
	private FileDao FileDao;
	

	/**
	 * 添加
	 * @param File
	 * @return
	 */
	public Boolean addFile(TFile File){		
		return FileDao.addFile(File);
	}
	
	/**
	 * 删除数据字典
	 * @param File
	 * @return
	 */
	public Boolean deleteFile(TFile File){		
		return FileDao.deleteFile(File);
	}
	
	/**
	 * 更新数据字典
	 * @param File
	 * @return
	 */
	public Boolean updateFile(TFile File){
		return FileDao.updateFile(File);
	}
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TFile File){
		return FileDao.getCount(File);
	} 
	
	public List getFileList(final PageUtil pageUtil,final TFile File){
		return this.FileDao.getFileList(pageUtil,File);
	}
	
	/**
	 * 查询对象
	 * @param id
	 * @return
	 */
	public TFile seachFile(Long id){
		return FileDao.seachFile(id);
	}
	

	public FileDao getFileDao() {
		return FileDao;
	}

	public void setFileDao(FileDao FileDao) {
		this.FileDao = FileDao;
	}

	public List searchFile(TFile File) {
		// TODO Auto-generated method stub
		return null;
	}

}
