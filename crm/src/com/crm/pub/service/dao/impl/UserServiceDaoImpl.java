package com.crm.pub.service.dao.impl;

import java.util.List;

import com.crm.page.PageUtil;
import com.crm.pub.dao.inf.UserDao;
import com.crm.pub.po.TRole;
import com.crm.pub.po.TUser;
import com.crm.pub.service.dao.inf.UserServiceDao;

/**
 * �����ӿ�ʵ���� UserServiceDaoImpl ʵ���û� ����ɾ���ģ���
 * 
 * @version 0.5
 * @author hyq $2009/10/22
 */
public class UserServiceDaoImpl implements UserServiceDao {
	/**
	 * ���ݲ�ӿ�
	 */
	private UserDao userDao;

	/**
	 * ����û�
	 */
	public void addUser(TUser users) {

		userDao.addUser(users);
	}

	/**
	 * ɾ���û�
	 */
	public void deleteUser(TUser users) {
		TUser user = userDao.getUser(users.getUserid());

		userDao.deleteUser(user);
	}

	/**
	 * �õ�ָ���û�
	 */

	public TUser getUser(String userId) {
		TUser tuser = userDao.getUser(userId);
		return tuser;
	}

	/**
	 * ��ѯ�û�
	 */

	public List searchUser(TUser user, PageUtil pageutil) {
		return userDao.searchUser(user, pageutil);
	}

	/**
	 * �޸��û�
	 */
	public boolean updateUser(TUser users) {

		return userDao.updateUser(users);

	}

	/**
	 * ����״̬
	 * 
	 * @param users
	 * @return
	 */
	public boolean updateState(TUser users) {
		return userDao.updateState(users);
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public List searchRole(TRole role) {
		return this.userDao.searchRole(role);
	}
	
	/**
	 * Ȩ���б�
	 * @return
	 */
	public List searchPower(){
		return this.userDao.searchPower();
	}

	public int getCount(TUser user) {
		return this.userDao.getCount(user);
	}

	/**
	 * �޸�����
	 * 
	 * @param user
	 */
	public boolean updatePass(TUser user) {
		return userDao.updatePass(user);
	}

}
