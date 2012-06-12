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
 * ����̼�
 * @param union
 */
public void addUnion(UnionBinfo union,UnionSlog log) {
	unionDao.addUnion(union);
	Long id = unionDao.getNextId();
	log.setUnionbId(id);
	unionDao.addLog(log);
	
}
/**
 * ɾ���̼�
 * @param union
 */
public void deleteUnion(UnionBinfo union) {
	unionDao.deleteUnion(union);
	
}
/**
 * ����̼�����
 * @param union
 */
public int getCount(UnionBinfo union) {
	
	return unionDao.getCount(union);
}
/**
 * ��ö�Ӧ�̼�
 * @param union
 */
public UnionBinfo getUnion(long uid) {
	return unionDao.getUnion(uid);
}
/**
 * ��ȡ�����̼�
 * @param union
 */
public List getUnionList(UnionBinfo union, PageUtil pageUtil) {
	
	return unionDao.getUnionList(union, pageUtil);
}
/**
 * �޸��̼�
 * @param union
 */
public void updateUnion(UnionBinfo union,UnionSlog log) {
	unionDao.updateUnion(union);
	unionDao.addLog(log);
	
}
/**
 * �޸��̼�
 * @param union
 */
public void updateUnion(UnionBinfo union) {
	unionDao.updateUnion(union);
	
	
}

/**
 * ȡ��Ӧ�������ֵ�
 * @param id
 */
public List getDate(Long id) {
	
	return unionDao.getDate(id);
}

/**
 * ��ȡ��Ӧ�������ֵ����
 * @return
 */
public TData getObject(Long id){
	return unionDao.getObject(id);
}

public TData getData(String name) {
	
	return unionDao.getData(name);
}
/**
 * ���
 * @param id
 * @param check
 */

public void updateCheck(Long id, String check) {
	unionDao.updateCheck(id, check);
	
}
/**
 * ��÷ּ���־����
 * @param union
 */
public int getLogCount(UnionSlog log,final String starttime,final String endtime) {
	// TODO Auto-generated method stub
	return unionDao.getLogCount(log, starttime, endtime);
}
/**
 * ��ȡ������־
 * @param union
 */
public List getLogList(UnionSlog log, PageUtil pageUtil,final String starttime,final String endtime) {
	
	return unionDao.getLogList(log, pageUtil, starttime, endtime);
}
/**
 * �����ѡ�ּ���־����
 * @param union
 */
public int getLogCount(String log) {
	
	return unionDao.getLogCount(log);
}
/**
* ��ȡ������־
* @param union
*/
public List getLogList(String log, PageUtil pageUtil) {
	
	return unionDao.getLogList(log, pageUtil);
}
/**
 * ע���̼�
 * @param union
 */
public void updateState(UnionBinfo union) {
	unionDao.updateState(union);
	
}











}
