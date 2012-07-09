package com.crm.club.sevice.dao.impl;

import java.util.List;

import com.crm.club.dao.inf.ClubNetWorkDao;
import com.crm.club.po.ClubNetInfo;
import com.crm.club.sevice.dao.intf.ClubServiceDao;
import com.crm.pub.po.TData;

public class ClubServiceDaoImpl implements ClubServiceDao {
	
	private ClubNetWorkDao clubNetWorkDao;
	/**
	 * ��ѯ�����б�
	 * 
	 * @param clubnetinfo
	 * @return
	 */

	public List<ClubNetInfo> searchRoleList(ClubNetInfo clubNetInfo) {
		
		return clubNetWorkDao.searchRoleList(clubNetInfo);
	}
	/**
	 * ��������
	 * @param netinfo
	 * @return
	 */
	public boolean addClubNetWork(ClubNetInfo clubNetInfo) {
		
		
		return clubNetWorkDao.addClubNetWork(clubNetInfo);
	}
	
	
	/**
	 * ���㼶���б�
	 * @return
	 */
	public List<TData> seachClubLevList(){
		
		return clubNetWorkDao.seachClubLevList();
		
	}
	/**
	 * ���������б�
	 * @return
	 */
	public List<TData> seachClubTypeList(){
		
		return clubNetWorkDao.seachClubTypeList();
		
	}
	/**
	 * �������
	 * 
	 * @param clubnetId
	 */

	public ClubNetInfo getClubInfo(final Integer clubnetId){
		
		return clubNetWorkDao.getClubInfo(clubnetId);
	}
	/**
	 * �޸�������Ϣ
	 * 
	 * @param netinfo
	 * @return
	 */

	public boolean updateClubNetWork(ClubNetInfo netinfo){
		
		return clubNetWorkDao.updateClubNetWork(netinfo);
	}
	/**
	 * ɾ��������Ϣ
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
