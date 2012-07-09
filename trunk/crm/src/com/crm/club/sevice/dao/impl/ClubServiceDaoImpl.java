package com.crm.club.sevice.dao.impl;

import java.util.List;

import com.crm.club.dao.inf.ClubNetWorkDao;
import com.crm.club.po.ClubNetInfo;
import com.crm.club.sevice.dao.intf.ClubServiceDao;
import com.crm.pub.po.TData;

public class ClubServiceDaoImpl implements ClubServiceDao {
	
	private ClubNetWorkDao clubNetWorkDao;
	/**
	 * 查询网点列表
	 * 
	 * @param clubnetinfo
	 * @return
	 */

	public List<ClubNetInfo> searchRoleList(ClubNetInfo clubNetInfo) {
		
		return clubNetWorkDao.searchRoleList(clubNetInfo);
	}
	/**
	 * 新增网点
	 * @param netinfo
	 * @return
	 */
	public boolean addClubNetWork(ClubNetInfo clubNetInfo) {
		
		
		return clubNetWorkDao.addClubNetWork(clubNetInfo);
	}
	
	
	/**
	 * 网点级别列表
	 * @return
	 */
	public List<TData> seachClubLevList(){
		
		return clubNetWorkDao.seachClubLevList();
		
	}
	/**
	 * 网点类型列表
	 * @return
	 */
	public List<TData> seachClubTypeList(){
		
		return clubNetWorkDao.seachClubTypeList();
		
	}
	/**
	 * 网点对象
	 * 
	 * @param clubnetId
	 */

	public ClubNetInfo getClubInfo(final Integer clubnetId){
		
		return clubNetWorkDao.getClubInfo(clubnetId);
	}
	/**
	 * 修改网点信息
	 * 
	 * @param netinfo
	 * @return
	 */

	public boolean updateClubNetWork(ClubNetInfo netinfo){
		
		return clubNetWorkDao.updateClubNetWork(netinfo);
	}
	/**
	 * 删除网点信息
	 * 
	 * @param clubnetId
	 * @return
	 */

	public boolean deleteClubNetWork(final long clubnetId){
		
		
		return clubNetWorkDao.deleteClubNetWork(clubnetId);
	}
	public ClubNetWorkDao getClubNetWorkDao() {
		return clubNetWorkDao;
	}
	public void setClubNetWorkDao(ClubNetWorkDao clubNetWorkDao) {
		this.clubNetWorkDao = clubNetWorkDao;
	}


}
