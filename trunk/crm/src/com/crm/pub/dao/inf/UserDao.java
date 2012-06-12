package com.crm.pub.dao.inf;

import java.util.List;

import com.crm.page.PageUtil;
import com.crm.pub.po.TRole;
import com.crm.pub.po.TUser;
/**
 * 接口 UserDao
 * 实现用户 增，删，改，查
 * @version 0.5
 * @author hyq $2009/10/22
 */
public interface UserDao {
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
     public void updateUser(TUser users);
     /**
 	 * @param userid
 	 * 根据userid，查找用户信息
 	 * @return TUser
 	 */
 	public TUser getUser(String userId);
     /**
 	 * 查询用户
 	 */
 	 public List searchUser(TUser user ,PageUtil pageutil);
     /**
  	 * 获取用户总数
  	 */
      public int getCount(TUser user);
    
     /**
  	 * 查询角色
  	 */
     public List searchRole(TRole role);
     
     /**
      * 查找所有客户经理列表
     * @return
     */
    public List clientManagers();
    /**
     * 修改密码
     * @param user
     */
    public void updatePass(TUser user);
}
