package com.crm.group.dao.inf;

import java.util.List;

import com.crm.client.po.TClient;
import com.crm.group.po.Groups;
import com.crm.group.po.TOldgroupmess;
import com.crm.group.po.VipProvince;
import com.crm.pub.po.TData;
import com.crm.pub.po.TUser;

public interface GroupDistributeDAO {
	/**
	 * 
	 * 集团列表（所有的集团包括有无话费）
	 * 
	 * @param groups
	 */
	public List<Groups> searchGroupDistributeList(Groups groups,
			final int currentPage, final int pageSize);

	/**
	 * 集团未分配列表
	 * 
	 * @param groups
	 */
	public List<Groups> searchNoDistributeList(final Groups groups);

	/**
	 * 客户经理列表
	 */
	public List<TUser> searchManagerList();

	/**
	 * 集团已分配列表
	 * 
	 * @param groups
	 * 
	 */
	public List<Groups> searchhasDisList(final Groups groups);

	/**
	 * 集团记录数
	 * 
	 * @param groups
	 * @return
	 */
	public int getCount(final Groups groups);

	/**
	 * 分配
	 * 
	 * @param group
	 */
	public boolean distributeManager(final String[] groupids,
			final String managerid);

	/**
	 * 集团对象
	 * 
	 * @param group
	 */
	public Groups getGroup(Groups group);

	/**
	 * 集团用户数
	 * 
	 * @param groupid
	 * @return
	 */

	public Integer guserListCount(final String groupid);

	/**
	 * 集团客户列表
	 * 
	 * @param groupid
	 * @return
	 */

	public List<TClient> guserList(final String groupid, final int currentPage,
			final int pageSize);

	/**
	 * 取得一个客户 根据手机号码
	 * 
	 * @param phone
	 * @return
	 */
	public TClient getClient(String phone);

	/**
	 * 查询集团历史列表
	 * 
	 * @param groups
	 * 
	 */

	public List<TOldgroupmess> searchGrHistList(final Groups groups,
			final int currentPage, final int pageSize);

	/**
	 * 查询集团历史记录数
	 * 
	 * @param groups
	 * 
	 */

	public Integer searchGrHistCount(final Groups groups);

	/**
	 * 操作类型列表
	 * 
	 * @return
	 */
	public List<TData> searchOptype();

	/**
	 * 集团等级列表
	 */

	public List<TData> searchLevelList();

}
