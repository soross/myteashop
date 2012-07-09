package com.crm.group.service.dao.impl;

import java.util.List;

import com.crm.client.dao.inf.ClientDao;
import com.crm.client.po.TClient;
import com.crm.group.dao.inf.GroupDistributeDAO;
import com.crm.group.dao.inf.GroupViewDao;
import com.crm.group.po.Groups;
import com.crm.group.po.TFee;
import com.crm.group.po.TGroupfee;
import com.crm.group.po.TGrouplinker;
import com.crm.group.po.TGrouplog;
import com.crm.group.po.VipCity;
import com.crm.group.po.VipProvince;
import com.crm.group.service.dao.inf.GroupDistributeServiceDAO;
import com.crm.group.service.dao.inf.GroupServiceDao;
import com.crm.group.service.dao.inf.GroupViewServiceDAO;
import com.crm.pub.po.TData;
import com.crm.pub.po.TPower;
import com.crm.pub.po.TUser;

public class GroupViewServiceDAOImpl implements GroupViewServiceDAO {

	private GroupViewDao groupViewDao;

	private GroupServiceDao groupServiceDao;

	private GroupDistributeDAO groupDistributeDAO;

	private ClientDao clientDao;

	public GroupDistributeDAO getGroupDistributeDAO() {
		return groupDistributeDAO;
	}

	public void setGroupDistributeDAO(GroupDistributeDAO groupDistributeDAO) {
		this.groupDistributeDAO = groupDistributeDAO;
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
	 * ���ŵȼ��б�
	 */
	public List<TData> searchLevelList() {

		return groupViewDao.searchLevelList();
	}

	/**
	 * ������ҵ�б�
	 */
	public List<TData> searchVocationList() {

		return groupViewDao.searchVocationList();
	}

	/**
	 * ���������б�
	 * 
	 * @return
	 */
	public List<TData> searchOptype() {
		return groupViewDao.searchOptype();

	}

	/**
	 * ʡ���б�
	 */
	public List<VipProvince> searchProvinceList() {

		return groupViewDao.searchProvinceList();
	}

	/**
	 * ���Ŷ���
	 */
	public Groups getGroup(String groupid) {
		// TODO Auto-generated method stub
		return groupViewDao.getGroup(groupid);
	}

	public GroupServiceDao getGroupServiceDao() {
		return groupServiceDao;
	}

	public void setGroupServiceDao(GroupServiceDao groupServiceDao) {
		this.groupServiceDao = groupServiceDao;
	}

	/**
	 * ������ϵ��
	 * 
	 */
	public TGrouplinker getLinker(String groupid) {

		return groupViewDao.getLinker(groupid);
	}

	/**
	 * ���¼�������
	 */

	public TGroupfee getGroupFee(String groupid, String nowDate) {
		// TODO Auto-generated method stub
		return groupViewDao.getGroupFee(groupid, nowDate);
	}

	/**
	 * ��ȡ6����ʵ�ʻ���
	 */
	public List<TGroupfee> tGroupfeeList(final String groupid,
			final Integer year, final Integer month) {

		return groupViewDao.tGroupfeeList(groupid, year, month);
	}

	/**
	 * �����û��б�
	 */
	public List<TClient> clientList(String groupid, String nowDate,
			final int currentPage, final int pageSize) {

		return groupViewDao.clientList(groupid, nowDate, currentPage, pageSize);
	}

	public Integer clientCount(final String groupid, final String nowDate) {

		return groupViewDao.clientCount(groupid, nowDate);
	}

	/**
	 * �����û�������Ϣ�б�
	 */
	public List<TFee> userFeeList(final String groupid, final int currentPage,
			final int pageSize) {

		return groupViewDao.userFeeList(groupid, currentPage, pageSize);

	}

	/**
	 * ���Ѽ�¼��
	 * 
	 * @param groupid
	 * @return
	 */
	public Integer userFeeListCount(final String groupid) {

		return groupViewDao.userFeeListCount(groupid);

	}

	public int getCount(Groups groups, Integer fcount, Integer tcount,
			Integer fmoney, Integer tmoney) {
		// TODO Auto-generated method stub
		return groupViewDao.getCount(groups, fcount, tcount, fmoney, tmoney);
	}

	/**
	 * �����б�
	 * 
	 * @param groups
	 */

	public List<Groups> searchGroupList(Groups groups, int currentPage,
			int pageSize, final Integer fcount, final Integer tcount,
			final Integer fmoney, final Integer tmoney) {

		return groupViewDao.searchGroupList(groups, currentPage, pageSize,
				fcount, tcount, fmoney, tmoney);

	}

	/**
	 * �춯�б�
	 * 
	 * @param groups
	 * @param currentPage
	 * @param pageSize
	 * @return
	 */
	public List<TGrouplog> searchtLogList(final Groups groups,
			final int currentPage, final int pageSize) {

		return groupViewDao.searchtLogList(groups, currentPage, pageSize);

	}

	/**
	 * �����춯��
	 * 
	 * @param groups
	 * @param currentPage
	 * @param pageSize
	 * @return
	 */
	public Integer gettLogCount(final Groups groups) {

		return groupViewDao.gettLogCount(groups);

	}

	/**
	 * ȡ��ĳʡ�ݵĳ����б�
	 * 
	 * @param
	 * @return
	 */
	public List searchCityList(String proCode) {
		return clientDao.searchCityList(proCode);

	}

	/**
	 * ����VCODE ȡ��ʡ
	 */

	public String getProvName(final String vcode) {

		return groupViewDao.getProvName(vcode);

	}
	/**
	 * ����nid��ȡ������
	 * @param nid
	 * @return
	 */
	public String getAreaName(final Long nid){
		
		return groupViewDao.getAreaName(nid);
	}

	/**
	 * 
	 * �����б����еļ��Ű������޻��ѣ�
	 * 
	 * @param groups
	 */
	public List<Groups> searchGroupDistributeList(final Groups groups,
			final int currentPage, final int pageSize) {
		return groupDistributeDAO.searchGroupDistributeList(groups,
				currentPage, pageSize);

	}

	public ClientDao getClientDao() {
		return clientDao;
	}

	public void setClientDao(ClientDao clientDao) {
		this.clientDao = clientDao;
	}

}
