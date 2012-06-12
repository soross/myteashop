package com.crm.pub.service.dao.inf;

import java.util.List;

import com.crm.page.PageUtil;
import com.crm.pub.po.TRole;
import com.crm.pub.po.TUser;

/**
 * �����ӿ� UserServiceDao
 * ʵ���û� ����ɾ���ģ���
 * @version 0.5
 * @author hyq $2009/10/22
 */
public interface UserServiceDao {
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
 	 * @param userId
 	 * ����userId��ȡ�û���Ϣ
 	 * @return
 	 */
 	public TUser getUser(String userId);

     /**
 	 * ��ѯ�û�
 	 */
     
     public List searchUser(TUser user, PageUtil pageutil);
     /**
  	 * ��ѯ��ɫ
  	 */
      public List searchRole(TRole role);
      /**
    	 * ��ȡ�û�����
    	 */
        public int getCount(TUser user); 
        /**
         * �޸�����
         * @param user
         */
        public void updatePass(TUser user);
}
