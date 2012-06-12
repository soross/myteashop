package com.crm.club.dao.inf;

import java.util.List;

import com.crm.club.po.ClubNetInfo;
import com.crm.pub.po.TData;


public interface ClubNetWorkDao {
	
	/**
	 * 新增网点
	 * @return
	 */
	public boolean addClubNetWork(ClubNetInfo netinfo);
	/**
	 * 查询网点列表
	 * 
	 * @param clubnetinfo
	 * @return
	 */
	public List<ClubNetInfo> searchRoleList(final ClubNetInfo clubnetinfo);
	/**
	 * 网点级别列表
	 * @return
	 */
	public List<TData> seachClubLevList();
	/**
	 * 网点类型列表
	 * @return
	 */
	public List<TData> seachClubTypeList();
	/**
	 * 网点对象
	 * 
	 * @param clubnetId
	 */

	public ClubNetInfo getClubInfo(final Integer clubnetId);
	/**
	 * 修改网点信息
	 * 
	 * @param netinfo
	 * @return
	 */

	public boolean updateClubNetWork(ClubNetInfo netinfo);
	/**
	 * 删除网点信息
	 * 
	 * @param clubnetId
	 * @return
	 */

	public boolean deleteClubNetWork(final long clubnetId);
	
	

}
