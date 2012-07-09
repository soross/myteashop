package com.crm.group.dao.inf;

import java.util.List;

import com.crm.group.po.ClubActivity;
import com.crm.group.po.TFees;
import com.crm.page.PageUtil;

public interface ActDao {
	/**
	 * ��ӻ
	 * @param act
	 */
   public void addAct(ClubActivity act);
   /**
    * �޸Ļ
    * @param act
    */
   public void updateAct(ClubActivity act);
   /**
    * ��˻
    * @param act
    */
   public void updateCheck(long aid,String check);
   /**
    *ɾ��� 
    * @param act
    */
   public void deleteAct(ClubActivity act);
   /**
    *ͳ�ƻ��
    * @param act
    */
   public int getCount(ClubActivity act,String starttime,String endtime);
   /**
    *��ѯ�ض��
    * @param act
    */
   public ClubActivity getAct(Long actId);
   /**
    *��ѯ�
    * @param act
    */
   public List searchACt(ClubActivity act,PageUtil pageutil,String starttime,String endtime);
   /**
    *ɾ��� ������ϸ
    * @param act
    */
   public void deleteFee(TFees fee);
}
