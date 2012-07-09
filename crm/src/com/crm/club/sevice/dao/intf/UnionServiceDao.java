package com.crm.club.sevice.dao.intf;

import java.util.List;

import com.crm.club.po.UnionBinfo;
import com.crm.club.po.UnionSlog;
import com.crm.page.PageUtil;
import com.crm.pub.po.TData;

public interface UnionServiceDao {
	/**
	 * ����̼�
	 * @param union
	 */
   public void addUnion(UnionBinfo union,UnionSlog log);
   /**
	 * ɾ���̼�
	 * @param union
	 */
   public void deleteUnion(UnionBinfo union);
   /**
	 * ע���̼�
	 * @param union
	 */
  public void updateState(UnionBinfo union);
   /**
	 * �޸��̼�
	 * @param union
	 */
   public void updateUnion(UnionBinfo union,UnionSlog log);
   /**
	 * �޸��̼�
	 * @param union
	 */
  public void updateUnion(UnionBinfo union);
   
   /**
	 * ��ö�Ӧ�̼�
	 * @param union
	 */
   public UnionBinfo getUnion(long uid);
   /**
	 * ����̼�����
	 * @param union
	 */
   public int getCount(UnionBinfo union);
   
   /**
	 * ��ȡ�����̼�
	 * @param union
	 */
   public List getUnionList(UnionBinfo union,PageUtil pageUtil);
   /**
	 * ��÷ּ���־����
	 * @param union
	 */
 public int getLogCount(UnionSlog log,final String starttime,final String endtime);
   /**
	 * ��ȡ������־
	 * @param union
	 */
  public List getLogList(UnionSlog log,PageUtil pageUtil,String starttime, String endtime);
  /**
	 * �����ѡ�ּ���־����
	 * @param union
	 */
public int getLogCount(String log);
/**
 * ��ȡ��ѡ��־
 * @param union
 */
public List getLogList(String log,PageUtil pageUtil);
   /**
    * ȡ��Ӧ�������ֵ�
    * @param id
    */
   public List getDate(Long id);
   /**
    * ��ȡ��Ӧ�������ֵ����
    * @return
    */
   public TData getObject(Long id);
   /**
    * ��ȡ��Ӧ�������ֵ����
    * @return
    */
   public TData getData(String name);
   /**
    * ���
    * @param id
    * @param check
    */
   public void updateCheck(Long id,String check);
}
