package com.crm.club.dao.inf;

import java.util.List;

import com.crm.club.po.ClubNetInfo;
import com.crm.pub.po.TData;


public interface ClubNetWorkDao {
	
	/**
	 * ��������
	 * @return
	 */
	public boolean addClubNetWork(ClubNetInfo netinfo);
	/**
	 * ��ѯ�����б�
	 * 
	 * @param clubnetinfo
	 * @return
	 */
	public List<ClubNetInfo> searchRoleList(final ClubNetInfo clubnetinfo);
	/**
	 * ���㼶���б�
	 * @return
	 */
	public List<TData> seachClubLevList();
	/**
	 * ���������б�
	 * @return
	 */
	public List<TData> seachClubTypeList();
	/**
	 * �������
	 * 
	 * @param clubnetId
	 */

	public ClubNetInfo getClubInfo(final Integer clubnetId);
	/**
	 * �޸�������Ϣ
	 * 
	 * @param netinfo
	 * @return
	 */

	public boolean updateClubNetWork(ClubNetInfo netinfo);
	/**
	 * ɾ��������Ϣ
	 * 
	 * @param clubnetId
	 * @return
	 */

	public boolean deleteClubNetWork(final long clubnetId);
	
	

}
