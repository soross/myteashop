package com.crm.group.dao.inf;

import java.util.List;

import com.crm.group.po.ClubActivity;
import com.crm.group.po.TFees;
import com.crm.page.PageUtil;

public interface ActDao {
	/**
	 * 添加活动
	 * @param act
	 */
   public void addAct(ClubActivity act);
   /**
    * 修改活动
    * @param act
    */
   public void updateAct(ClubActivity act);
   /**
    * 审核活动
    * @param act
    */
   public void updateCheck(long aid,String check);
   /**
    *删除活动 
    * @param act
    */
   public void deleteAct(ClubActivity act);
   /**
    *统计活动数
    * @param act
    */
   public int getCount(ClubActivity act,String starttime,String endtime);
   /**
    *查询特定活动
    * @param act
    */
   public ClubActivity getAct(Long actId);
   /**
    *查询活动
    * @param act
    */
   public List searchACt(ClubActivity act,PageUtil pageutil,String starttime,String endtime);
   /**
    *删除活动 费用明细
    * @param act
    */
   public void deleteFee(TFees fee);
}
