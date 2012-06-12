package com.crm.group.service.dao.impl;

import java.util.List;

import com.crm.group.dao.inf.ActDao;
import com.crm.group.po.ClubActivity;
import com.crm.group.po.TFees;
import com.crm.group.service.dao.inf.ActServiceDao;
import com.crm.page.PageUtil;

public class ActServiceDaoImpl implements ActServiceDao{
   private ActDao actDao;

public ActDao getActDao() {
	return actDao;
}

public void setActDao(ActDao actDao) {
	this.actDao = actDao;
}
/**
 * ��ӻ
 * @param act
 */
public void addAct(ClubActivity act) {
	actDao.addAct(act);
	
}
/**
    *ɾ��� 
    * @param act
    */
public void deleteAct(ClubActivity act) {
	ClubActivity ac=actDao.getAct(act.getActId());
	actDao.deleteAct(ac);
	
}
/**
    *��ѯ�ض��
    * @param act
    */
public ClubActivity getAct(Long actId) {
	
	return actDao.getAct(actId);
}
/**
    *ͳ�ƻ��
    * @param act
    */
public int getCount(ClubActivity act,String starttime,String endtime) {
	
	return actDao.getCount(act,starttime,endtime);
}
/**
    *��ѯ�
    * @param act
    */
public List searchACt(ClubActivity act, PageUtil pageutil,String starttime,String endtime) {
	
	return actDao.searchACt(act, pageutil,starttime,endtime);
}
/**
    * �޸Ļ
    * @param act
    */
public void updateAct(ClubActivity act) {
	actDao.updateAct(act);
	
}
/**
 *ɾ��� ������ϸ
 * @param act
 */
public void deleteFee(TFees fee) {
	actDao.deleteFee(fee);
	
}
/**
 * ��˻
 * @param act
 */
public void updateCheck(long aid,String check) {
	actDao.updateCheck(aid,check);
	
}

}
