package com.crm.pub.service.dao.inf;

import java.util.List;

import com.crm.page.PageUtil;
import com.crm.pub.po.TRole;
import com.crm.pub.po.TUser;

/**
 * 服务层接口 UserServiceDao 实现用户 增，删，改，查
 * 
 * @version 0.5
 * @author hyq $2009/10/22
 */
public interface UserServiceDao {
	/**
	 * 添加用户
	 */
	public void addUser(TUser users);

	/**
	 * 删除用户
	 */
	public void deleteUser(TUser users);

	/**
	 * 修改用户
	 */
	public boolean updateUser(TUser users);

	/**
	 * 更新状态
	 * 
	 * @param users
	 * @return
	 */
	public boolean updateState(TUser users);

	/**
	 * @param userId
	 *            根据userId获取用户信息
	 * @return
	 */
	public TUser getUser(String userId);

	/**
	 * 查询用户
	 */

	public List searchUser(TUser user, PageUtil pageutil);
	/**
	 * 权限列表
	 * @return
	 */
	public List searchPower();
	/**
	 * 查询角色
	 */
	public List searchRole();

	/**
	 * 获取用户总数
	 */
	public int getCount(TUser user);

	/**
	 * 修改密码
	 * 
	 * @param user
	 */
	public boolean updatePass(TUser user);
	
	/**
	 * 修改权限
	 * 
	 * @param user
	 */
	public boolean updatePower(TUser user);
}
