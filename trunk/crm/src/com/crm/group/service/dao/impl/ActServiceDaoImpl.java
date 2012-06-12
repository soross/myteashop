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
 * 添加活动
 * @param act
 */
public void addAct(ClubActivity act) {
	actDao.addAct(act);
	
}
/**
    *删除活动 
    * @param act
    */
public void deleteAct(ClubActivity act) {
	ClubActivity ac=actDao.getAct(act.getActId());
	actDao.deleteAct(ac);
	
}
/**
    *查询特定活动
    * @param act
    */
public ClubActivity getAct(Long actId) {
	
	return actDao.getAct(actId);
}
/**
    *统计活动数
    * @param act
    */
public int getCount(ClubActivity act,String starttime,String endtime) {
	
	return actDao.getCount(act,starttime,endtime);
}
/**
    *查询活动
    * @param act
    */
public List searchACt(ClubActivity act, PageUtil pageutil,String starttime,String endtime) {
	
	return actDao.searchACt(act, pageutil,starttime,endtime);
}
/**
    * 修改活动
    * @param act
    */
public void updateAct(ClubActivity act) {
	actDao.updateAct(act);
	
}
/**
 *删除活动 费用明细
 * @param act
 */
public void deleteFee(TFees fee) {
	actDao.deleteFee(fee);
	
}
/**
 * 审核活动
 * @param act
 */
public void updateCheck(long aid,String check) {
	actDao.updateCheck(aid,check);
	
}

}
