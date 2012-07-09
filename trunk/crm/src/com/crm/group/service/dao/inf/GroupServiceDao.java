package com.crm.group.service.dao.inf;

import java.security.acl.Group;
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
import com.crm.pub.po.TUser;
/**
 * �����ӿ� GroupServiceDao
 * ʵ�ּ��� ����ɾ���ģ���
 * @version 0.5
 * @author hyq $2009/10/26
 */
public interface GroupServiceDao {
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
    	 * �޸ļ��ż���
    	 */
        public void updateLevel(Groups group);
     /**
 	 * @param userid
 	 * ����userid�����Ҽ�����Ϣ
 	 * @return TUser
 	 */
 	public Groups getGroup(String groupid);
     /**
 	 * ��ѯ����
 	 */
 	 public List searchGroup(Groups group ,PageUtil pageutil);
     /**
  	 * ��ȡ��������
  	 */
      public int getCount(Groups group);
      /**
    	 * ��ȡʡ��
    	 */
      public List getProvince();
        /**
      	 * ��ȡ��Ӧʡ��
      	 */
      public VipProvince getPro(String privince);
      /**
    	 * ��ȡ����
    	 */
     public List getCity(VipCity city);
     /**
 	 * ��ȡ��Ӧ����
 	 */
    public VipArea getArea( Long area);
    /**
 	 * ��ȡ����
 	 */
    public List getAreaList( String city);
    /**
 	 * ͨ�������ҵ�������
 	 */
    public VipArea getAreas( Long nid);
    
     /**
 	 * ��ȡ��Ӧ����
 	 */
    public VipCity getCity(String city,String privince);
          /**
        	 * ��ȡ��ҵ
        	 */
     public List getData(TData data);
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
      
      public void addGroups(List<Groups> groups);
      
}
