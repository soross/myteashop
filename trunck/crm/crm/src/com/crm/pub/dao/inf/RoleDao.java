package com.crm.pub.dao.inf;

import java.util.List;

import com.crm.pub.po.TRole;

public interface RoleDao {
	/**
	 * ����û�
	 * 
	 * @param tRole
	 */
	public boolean addRole(TRole trole);

	/**
	 * ɾ����ɫ
	 * 
	 * @param tRole
	 */
	public boolean deleteRole(Long id);

	/**
	 * �޸Ľ�ɫ
	 * 
	 * @param tRole
	 */
	public boolean updateRole(TRole tRole);

	/**
	 * ��ѯ��ɫ�б�
	 * 
	 * @param tRole
	 * @return
	 */
	public List<TRole> searchRoleList(TRole trole,int currentPage,int pageSize);

	/**
	 * ��ȡ��ɫ����
	 * 
	 * @param tRole
	 * @return
	 */
	public TRole getRole(Long id);
	
	/**
	 * ��������Ȩ��
	 * @return
	 */
	public List powerList();
	
	/**
	 * ��ȡ��¼��
	 * @param trole
	 * @return
	 */
	public int getCount(TRole trole);
	
	/**
	 * ���ݽ�ɫ���ֲ��ҽ�ɫ����
	 * @param roleName
	 * @return
	 */
	public TRole getByName(String roleName);
}
