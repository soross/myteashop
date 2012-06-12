package com.crm.group.dao.inf;

import java.util.List;

import com.crm.group.po.Groups;
import com.crm.group.po.TGrouplinker;
import com.crm.group.po.TGrouplog;
import com.crm.group.po.TOldgroupmess;
import com.crm.group.po.VipArea;
import com.crm.group.po.VipCity;
import com.crm.group.po.VipProvince;
import com.crm.page.PageUtil;
import com.crm.pub.po.TData;

/**
 * �ӿ� GroupDao ʵ�ּ��� ����ɾ���ģ���
 * 
 * @version 0.5
 * @author hyq $2009/10/26
 */
public interface GroupDao {
	/**
	 * ��Ӽ���
	 */
	public void addGroup(Groups group);

	/**
	 * ɾ������
	 */
	public void deleteGroup(Groups group);

	/**
	 * �޸ļ���
	 */
	public void updateGroup(Groups group,String gid);
	 /**
  	 * �޸��޸ı���ҵ����
  	 */
      public void updateGroup(Groups group);
	/**
	 * @param userid
	 *            ����userid�����Ҽ�����Ϣ
	 * @return TUser
	 */
	public Groups getGroup(String groupid);

	/**
	 * ��ѯ����
	 */
	public List searchGroup(Groups group, PageUtil pageutil);

	/**
	 * ��ȡ��������
	 */
	public int getCount(Groups group);

	/**
	 * ��ȡʡ��
	 */
	public List getProvince();

	/**
	 * ��ȡ����
	 */
	public List getCity(VipCity city);

	/**
	 * ��ȡ��ҵ
	 */
	public List getData(TData data);

	

	/**
	 * ��ȡ��Ӧʡ��
	 */
	public VipProvince getPro(String privince);

	/**
	 * ��ȡ��Ӧ����
	 */
	public VipCity getCity(String city, String privince);

	/**
	 * ��ȡ��Ӧ��ҵ�Ͷ�Ӧ����
	 */
	public TData getData(Long data);

	/**
	 * ��ȡ��Ӧ����
	 */
	public TData getLevel(String data);

	/**
	 * �޸ļ���״̬
	 */
	public void updateState(Groups group);
	/**
  	 * �õ�������һ��id
  	 */ 
	public String getGroupId(String gtime,String province, String city, String calling);
	 /**
	 *��Ӽ�����־
	 */ 
  public void addglog(TGrouplog glog);
    /**
  	 * ��Ӽ�����ʷ��¼
  	 */ 
   public void addhistory(TOldgroupmess hismess);
   /**
	 * ��ȡ��Ӧ����
	 */
   public VipArea getArea( Long area);
   /**
	 * ��ȡ����
	 */
   public List getAreaList(final String city);
   /**
	 * ͨ�������ҵ�������
	 */
   public VipArea getAreas( Long nid);
   /**
    * 
    * �����ϵ��
    */
  public void addLinker(TGrouplinker linker);
  /**
   * 
   * �޸���ϵ��
   */
  public void updateLinker(TGrouplinker linker);
  /**
   * 
   * ɾ����ϵ��
   */
  public void deleteLinker(TGrouplinker linker);
  /**
   * 
   * �õ���ϵ��
   */
  public TGrouplinker getLinker(String lid);
  /**
	 * �޸ļ��ż���
	 */
  public void updateLevel(Groups group);
}
