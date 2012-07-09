package com.crm.club.sevice.dao.impl;

import java.util.List;

import com.crm.club.dao.inf.UnionDao;
import com.crm.club.po.UnionBinfo;
import com.crm.club.po.UnionSlog;
import com.crm.club.sevice.dao.intf.UnionServiceDao;
import com.crm.page.PageUtil;
import com.crm.pub.po.TData;

public class UnionServiceDaoImpl implements UnionServiceDao{
   private UnionDao unionDao;
   
public UnionDao getUnionDao() {
	return unionDao;
}

public void setUnionDao(UnionDao unionDao) {
	this.unionDao = unionDao;
}
/**
 * 添加商家
 * @param union
 */
public void addUnion(UnionBinfo union,UnionSlog log) {
	unionDao.addUnion(union);
	Long id = unionDao.getNextId();
	log.setUnionbId(id);
	unionDao.addLog(log);
	
}
/**
 * 删除商家
 * @param union
 */
public void deleteUnion(UnionBinfo union) {
	unionDao.deleteUnion(union);
	
}
/**
 * 获得商家总数
 * @param union
 */
public int getCount(UnionBinfo union) {
	
	return unionDao.getCount(union);
}
/**
 * 获得对应商家
 * @param union
 */
public UnionBinfo getUnion(long uid) {
	return unionDao.getUnion(uid);
}
/**
 * 获取所有商家
 * @param union
 */
public List getUnionList(UnionBinfo union, PageUtil pageUtil) {
	
	return unionDao.getUnionList(union, pageUtil);
}
/**
 * 修改商家
 * @param union
 */
public void updateUnion(UnionBinfo union,UnionSlog log) {
	unionDao.updateUnion(union);
	unionDao.addLog(log);
	
}
/**
 * 修改商家
 * @param union
 */
public void updateUnion(UnionBinfo union) {
	unionDao.updateUnion(union);
	
	
}

/**
 * 取相应的数据字典
 * @param id
 */
public List getDate(Long id) {
	
	return unionDao.getDate(id);
}

/**
 * 获取对应的数据字典对象
 * @return
 */
public TData getObject(Long id){
	return unionDao.getObject(id);
}

public TData getData(String name) {
	
	return unionDao.getData(name);
}
/**
 * 审核
 * @param id
 * @param check
 */

public void updateCheck(Long id, String check) {
	unionDao.updateCheck(id, check);
	
}
/**
 * 获得分级日志总数
 * @param union
 */
public int getLogCount(UnionSlog log,final String starttime,final String endtime) {
	// TODO Auto-generated method stub
	return unionDao.getLogCount(log, starttime, endtime);
}
/**
 * 获取所有日志
 * @param union
 */
public List getLogList(UnionSlog log, PageUtil pageUtil,final String starttime,final String endtime) {
	
	return unionDao.getLogList(log, pageUtil, starttime, endtime);
}
/**
 * 获得所选分级日志总数
 * @param union
 */
public int getLogCount(String log) {
	
	return unionDao.getLogCount(log);
}
/**
* 获取所有日志
* @param union
*/
public List getLogList(String log, PageUtil pageUtil) {
	
	return unionDao.getLogList(log, pageUtil);
}
/**
 * 注册商家
 * @param union
 */
public void updateState(UnionBinfo union) {
	unionDao.updateState(union);
	
}











}
