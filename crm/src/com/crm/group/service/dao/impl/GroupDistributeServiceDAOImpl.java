package com.crm.group.service.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;

import com.crm.client.po.TClient;
import com.crm.group.dao.inf.GroupDistributeDAO;
import com.crm.group.dao.inf.GroupViewDao;
import com.crm.group.po.Groups;
import com.crm.group.po.TOldgroupmess;
import com.crm.group.po.VipProvince;
import com.crm.group.service.dao.inf.GroupDistributeServiceDAO;
import com.crm.pub.GlobVar;
import com.crm.pub.po.TData;
import com.crm.pub.po.TUser;

public class GroupDistributeServiceDAOImpl implements GroupDistributeServiceDAO {

	private GroupDistributeDAO groupDistributeDAO;

	private GroupViewDao groupViewDao;

	public GroupViewDao getGroupViewDao() {
		return groupViewDao;
	}

	public void setGroupViewDao(GroupViewDao groupViewDao) {
		this.groupViewDao = groupViewDao;
	}

	/**
	 * �ͻ������б�
	 */
	public List<TUser> searchManagerList() {
		// TODO Auto-generated method stub
		return groupDistributeDAO.searchManagerList();
	}

	/**
	 * ��ѯ�����б�
	 */
	public List<Groups> searchGroupDistributeList(Groups groups,
			final int currentPage, final int pageSize) {
		// TODO Auto-generated method stub
		return groupDistributeDAO.searchGroupDistributeList(groups,
				currentPage, pageSize);
	}

	/**
	 * ��ѯδ���伯���б�
	 */
	public List<Groups> searchNoDistributeList(Groups groups) {
		// TODO Auto-generated method stub
		return groupDistributeDAO.searchNoDistributeList(groups);
	}

	/**
	 * ���ż�¼��
	 * 
	 * @param groups
	 * @return
	 */
	public int getCount(Groups groups) {
		// TODO Auto-generated method stub
		return groupDistributeDAO.getCount(groups);
	}

	public Groups getGroup(Groups group) {
		// TODO Auto-generated method stub
		return groupDistributeDAO.getGroup(group);
	}

	public boolean distributeManager(final String[] groupids,
			final String managerid) {
		// TODO Auto-generated method stub
		return groupDistributeDAO.distributeManager(groupids, managerid);
	}

	public List<Groups> searchhasDisList(Groups groups) {

		return groupDistributeDAO.searchhasDisList(groups);
	}

	public GroupDistributeDAO getGroupDistributeDAO() {
		return groupDistributeDAO;
	}

	public void setGroupDistributeDAO(GroupDistributeDAO groupDistributeDAO) {
		this.groupDistributeDAO = groupDistributeDAO;
	}

	/**
	 * �����û���
	 * 
	 * @param groupid
	 * @return
	 */

	public Integer guserListCount(final String groupid) {

		return groupDistributeDAO.guserListCount(groupid);

	}

	/**
	 * ���ſͻ��б�
	 * 
	 * @param groupid
	 * @return
	 */

	public List<TClient> guserList(final String groupid, final int currentPage,
			final int pageSize) {

		return groupDistributeDAO.guserList(groupid, currentPage, pageSize);
	}

	/**
	 * ȡ��һ���ͻ� �����ֻ�����
	 * 
	 * @param phone
	 * @return
	 */
	public TClient getClient(String phone) {

		return groupDistributeDAO.getClient(phone);
	}

	/**
	 * ʡ���б�
	 */
	public List<VipProvince> searchProvinceList() {
		// TODO Auto-generated method stub
		return groupViewDao.searchProvinceList();
	}

	/**
	 * ������ҵ�б�
	 */
	public List<TData> searchVocationList() {
		// TODO Auto-generated method stub
		return groupViewDao.searchVocationList();
	}

	/**
	 * Ʒ���б�
	 */

	public List<TData> searchBrandList() {
		// TODO Auto-generated method stub
		return groupViewDao.searchBrandList();
	}
	/**
	 * ��ѯ������ʷ�б�
	 * 
	 * @param groups
	 * 
	 */

	public List<TOldgroupmess> searchGrHistList(final Groups groups, final int currentPage,
			final int pageSize){
		
		return groupDistributeDAO.searchGrHistList(groups, currentPage, pageSize);
		
		
	}
	/**
	 * ��ѯ������ʷ��¼��
	 * 
	 * @param groups
	 * 
	 */

	
	public Integer searchGrHistCount(Groups groups) {
	
		return groupDistributeDAO.searchGrHistCount(groups);
	}
	/**
	 * ���������б�
	 * @return
	 */
	public List<TData> searchOptype(){
		return groupDistributeDAO.searchOptype();
		
		
	}
	/**
	 * ���ŵȼ��б�
	 */

	public List<TData> searchLevelList() {
	   return groupDistributeDAO.searchLevelList();
	}
	
	
	

}
