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
	 * 集团记录数
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
	 * 客户经理列表
	 */
	public List<TUser> searchManagerList() {
		// TODO Auto-generated method stub
		return groupDistributeDAO.searchManagerList();
	}

	/**
	 * 集团等级列表
	 */
	public List<TData> searchLevelList() {

		return groupViewDao.searchLevelList();
	}

	/**
	 * 集团行业列表
	 */
	public List<TData> searchVocationList() {

		return groupViewDao.searchVocationList();
	}

	/**
	 * 操作类型列表
	 * 
	 * @return
	 */
	public List<TData> searchOptype() {
		return groupViewDao.searchOptype();

	}

	/**
	 * 省份列表
	 */
	public List<VipProvince> searchProvinceList() {

		return groupViewDao.searchProvinceList();
	}

	/**
	 * 集团对象
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
	 * 集团联系人
	 * 
	 */
	public TGrouplinker getLinker(String groupid) {

		return groupViewDao.getLinker(groupid);
	}

	/**
	 * 上月集团消费
	 */

	public TGroupfee getGroupFee(String groupid, String nowDate) {
		// TODO Auto-generated method stub
		return groupViewDao.getGroupFee(groupid, nowDate);
	}

	/**
	 * 获取6个月实际话费
	 */
	public List<TGroupfee> tGroupfeeList(final String groupid,
			final Integer year, final Integer month) {

		return groupViewDao.tGroupfeeList(groupid, year, month);
	}

	/**
	 * 集团用户列表
	 */
	public List<TClient> clientList(String groupid, String nowDate,
			final int currentPage, final int pageSize) {

		return groupViewDao.clientList(groupid, nowDate, currentPage, pageSize);
	}

	public Integer clientCount(final String groupid, final String nowDate) {

		return groupViewDao.clientCount(groupid, nowDate);
	}

	/**
	 * 集团用户话务信息列表
	 */
	public List<TFee> userFeeList(final String groupid, final int currentPage,
			final int pageSize) {

		return groupViewDao.userFeeList(groupid, currentPage, pageSize);

	}

	/**
	 * 话费记录数
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
	 * 集团列表
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
	 * 异动列表
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
	 * 集团异动数
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
	 * 取得某省份的城市列表
	 * 
	 * @param
	 * @return
	 */
	public List searchCityList(String proCode) {
		return clientDao.searchCityList(proCode);

	}

	/**
	 * 根据VCODE 取得省
	 */

	public String getProvName(final String vcode) {

		return groupViewDao.getProvName(vcode);

	}
	/**
	 * 根据nid获取地区名
	 * @param nid
	 * @return
	 */
	public String getAreaName(final Long nid){
		
		return groupViewDao.getAreaName(nid);
	}

	/**
	 * 
	 * 集团列表（所有的集团包括有无话费）
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
