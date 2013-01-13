package com.crm.pub.service.dao.inf;

import java.util.List;

import com.crm.pub.po.TRole;

public interface RoleServiceDao {
	/**
	 * 添加用户
	 * 
	 * @param tRole
	 */
	public boolean addRole(TRole trole);

	/**
	 * 删除角色
	 * 
	 * @param tRole
	 */
	public boolean deleteRole(Long id);

	/**
	 * 修改角色
	 * 
	 * @param tRole
	 */
	public boolean updateRole(TRole tRole);
	
	/**
	 * 获取角色对象
	 * 
	 * @param tRole
	 * @return
	 */
	public TRole getRole(Long id);
	

	/**
	 * 查询角色列表
	 * 
	 * @param tRole
	 * @return
	 */
	public List<TRole> searchRoleList(TRole trole,int currentPage,int pageSize);

	
	/**
	 * 查找所有权限
	 * @return
	 */
	public List powerList();
	
	/**
	 * 获取记录数
	 * @param trole
	 * @return
	 */
	public int getCount(TRole trole);
	
	/**
	 * 根据角色名字查找角色对象
	 * @param roleName
	 * @return
	 */
	public TRole getByName(String roleName);

}
