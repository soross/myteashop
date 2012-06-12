package com.crm.pub.service.dao.impl;

import java.util.List;

import com.crm.pub.dao.inf.RoleDao;
import com.crm.pub.po.TRole;
import com.crm.pub.service.dao.inf.RoleServiceDao;

public class RoleServiceDaoImpl implements RoleServiceDao {

	private RoleDao roleDao;

	/**
	 * 角色删除
	 */
	public boolean deleteRole(Long id) {
		return roleDao.deleteRole(id);

	}

	/**
	 * 获得角色列表
	 */
	public List<TRole> searchRoleList(TRole trole,int currentPage,int pageSize) {

		return roleDao.searchRoleList(trole,currentPage,pageSize);
	}

	/**
	 * 角色更新
	 */
	public boolean updateRole(TRole tRole) {
		return roleDao.updateRole(tRole);

	}

	/* 添加角色
	 */
	public boolean addRole(TRole trole) {
        roleDao.addRole(trole);
		return true;
	}
	
	/**
	 * 根据角色名字查找角色对象
	 * @param roleName
	 * @return
	 */
	public TRole getByName(String roleName){
		return roleDao.getByName(roleName);
	}
	
	public RoleDao getRoleDao() {
		return roleDao;
	}

	public void setRoleDao(RoleDao roleDao) {
		this.roleDao = roleDao;
	}

	public List powerList() {
		return roleDao.powerList();
	}

	public TRole getRole(Long id) {
		return roleDao.getRole(id);
	}

	public int getCount(TRole trole) {
		
		return roleDao.getCount(trole);
	}

}
