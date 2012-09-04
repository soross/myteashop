package com.crm.pub.service.dao.inf;

import java.util.List;

import com.crm.page.PageUtil;
import com.crm.pub.po.TRole;
import com.crm.pub.po.TUser;

/**
 * �����ӿ� UserServiceDao ʵ���û� ����ɾ���ģ���
 * 
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
	public boolean updateUser(TUser users);

	/**
	 * ����״̬
	 * 
	 * @param users
	 * @return
	 */
	public boolean updateState(TUser users);

	/**
	 * @param userId
	 *            ����userId��ȡ�û���Ϣ
	 * @return
	 */
	public TUser getUser(String userId);

	/**
	 * ��ѯ�û�
	 */

	public List searchUser(TUser user, PageUtil pageutil);
	/**
	 * Ȩ���б�
	 * @return
	 */
	public List searchPower();
	/**
	 * ��ѯ��ɫ
	 */
	public List searchRole();

	/**
	 * ��ȡ�û�����
	 */
	public int getCount(TUser user);

	/**
	 * �޸�����
	 * 
	 * @param user
	 */
	public boolean updatePass(TUser user);
	
	/**
	 * �޸�Ȩ��
	 * 
	 * @param user
	 */
	public boolean updatePower(TUser user);
}
