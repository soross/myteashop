package com.crm.pub.service.dao.inf;

import java.util.List;

import com.crm.pub.po.TRole;

public interface RoleServiceDao {
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
	 * ��ȡ��ɫ����
	 * 
	 * @param tRole
	 * @return
	 */
	public TRole getRole(Long id);
	

	/**
	 * ��ѯ��ɫ�б�
	 * 
	 * @param tRole
	 * @return
	 */
	public List<TRole> searchRoleList(TRole trole,int currentPage,int pageSize);

	
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
