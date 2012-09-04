package com.crm.pub.service.dao.impl;

import java.util.List;

import com.crm.page.PageUtil;
import com.crm.pub.dao.inf.UserDao;
import com.crm.pub.po.TRole;
import com.crm.pub.po.TUser;
import com.crm.pub.service.dao.inf.UserServiceDao;

/**
 * 服务层接口实现类 UserServiceDaoImpl 实现用户 增，删，改，查
 * 
 * @version 0.5
 * @author hyq $2009/10/22
 */
public class UserServiceDaoImpl implements UserServiceDao {
	/**
	 * 数据层接口
	 */
	private UserDao userDao;

	/**
	 * 添加用户
	 */
	public void addUser(TUser users) {

		userDao.addUser(users);
	}

	/**
	 * 删除用户
	 */
	public void deleteUser(TUser users) {
		TUser user = userDao.getUser(users.getUserid());

		userDao.deleteUser(user);
	}

	/**
	 * 得到指定用户
	 */

	public TUser getUser(String userId) {
		TUser tuser = userDao.getUser(userId);
		return tuser;
	}

	/**
	 * 查询用户
	 */

	public List searchUser(TUser user, PageUtil pageutil) {
		return userDao.searchUser(user, pageutil);
	}

	/**
	 * 修改用户
	 */
	public boolean updateUser(TUser users) {

		return userDao.updateUser(users);

	}

	/**
	 * 更新状态
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
	 * 权限列表
	 * @return
	 */
	public List searchPower(){
		return this.userDao.searchPower();
	}

	public int getCount(TUser user) {
		return this.userDao.getCount(user);
	}

	/**
	 * 修改密码
	 * 
	 * @param user
	 */
	public boolean updatePass(TUser user) {
		return userDao.updatePass(user);
	}

}
