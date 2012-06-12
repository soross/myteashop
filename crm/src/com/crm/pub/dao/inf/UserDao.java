package com.crm.pub.dao.inf;

import java.util.List;

import com.crm.page.PageUtil;
import com.crm.pub.po.TRole;
import com.crm.pub.po.TUser;
/**
 * �ӿ� UserDao
 * ʵ���û� ����ɾ���ģ���
 * @version 0.5
 * @author hyq $2009/10/22
 */
public interface UserDao {
	/**
	 * ����û�
	 */
     public void addUser(TUser users);
     /**
 	 * ɾ���û�
 	 */
     public void deleteUser(TUser users);
     /**
 	 * �޸��û�
 	 */
     public void updateUser(TUser users);
     /**
 	 * @param userid
 	 * ����userid�������û���Ϣ
 	 * @return TUser
 	 */
 	public TUser getUser(String userId);
     /**
 	 * ��ѯ�û�
 	 */
 	 public List searchUser(TUser user ,PageUtil pageutil);
     /**
  	 * ��ȡ�û�����
  	 */
      public int getCount(TUser user);
    
     /**
  	 * ��ѯ��ɫ
  	 */
     public List searchRole(TRole role);
     
     /**
      * �������пͻ������б�
     * @return
     */
    public List clientManagers();
    /**
     * �޸�����
     * @param user
     */
    public void updatePass(TUser user);
}
