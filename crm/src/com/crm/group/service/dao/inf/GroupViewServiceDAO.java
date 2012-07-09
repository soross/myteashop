package com.crm.group.service.dao.inf;

import java.util.List;

import com.crm.client.po.TClient;
import com.crm.group.po.Groups;
import com.crm.group.po.TFee;
import com.crm.group.po.TGroupfee;
import com.crm.group.po.TGrouplinker;
import com.crm.group.po.TGrouplog;
import com.crm.group.po.VipCity;
import com.crm.group.po.VipProvince;
import com.crm.pub.po.TData;
import com.crm.pub.po.TPower;
import com.crm.pub.po.TUser;

public interface GroupViewServiceDAO {

/**
 * 集团记录数
 * @param groups
 * @return
 */
public int getCount(final Groups groups);
/**
 * 客户经理列表
 */
public List<TUser> searchManagerList();
/**
 * 集团等级列表
 */
public List<TData> searchLevelList();
/**
 * 集团行业列表
 */
public List<TData> searchVocationList();
/**
 * 操作类型列表
 * @return
 */
public List<TData> searchOptype();
/**
 * 省份列表
 */
public List<VipProvince> searchProvinceList();

/**
 * 集团对象
 * 
 * @param group
 */

public Groups getGroup(String groupid);
/**
 * 集团联系人
 */

public TGrouplinker getLinker( final String groupid);
/**
 * 获取上个月消费
 * @param groupid
 * @param nowDate
 * @return
 */
	public TGroupfee getGroupFee(final String groupid, final String nowDate);
	
	/**
	 * 获取6个月实际话费
	 */
	public List<TGroupfee> tGroupfeeList(final String groupid,final Integer year,final Integer month);
	
	/**
	 * 查询集团用户列表 
	 */
	
	public List<TClient> clientList(String groupid,String nowDate,final int currentPage,final int pageSize);
/**
 * 集团用户数
 */
	public Integer clientCount(final String groupid, final String nowDate);
	/**
	 * 集团用户话务信息列表
	 */
	public List<TFee> userFeeList(final String groupid,
			final int currentPage, final int pageSize);
	/**
	 * 话费记录数
	 * @param groupid
	 * @return
	 */
	public Integer userFeeListCount(final String groupid);
	/**
	 * 
	 * 集团列表
	 * 
	 * @param groups
	 */
	public List<Groups> searchGroupList(final Groups groups,
			final int currentPage, final int pageSize,final Integer fcount,final Integer tcount,final Integer fmoney,final Integer tmoney) ;
	/**
	 * 集团记录数
	 * 
	 * @return
	 */
	public int getCount(final Groups groups,final Integer fcount,final Integer tcount,final Integer fmoney,final Integer tmoney);
	/**
	 * 异动列表
	 * @param groups
	 * @param currentPage
	 * @param pageSize
	 * @return
	 */
	public List<TGrouplog> searchtLogList(final Groups groups,
			final int currentPage, final int pageSize);
	/**
	 * 集团异动数
	 * @param groups
	 * @param currentPage
	 * @param pageSize
	 * @return
	 */
	public Integer gettLogCount(final Groups groups);
	/**
	 * 取得某省份的城市列表
	 * @param 
	 * @return
	 */
	public List searchCityList(String proCode);
	/**
	 * 根据VCODE 取得省
	 * @param vcode
	 * @return
	 */
	public String getProvName( final String vcode);
	/**
	 * 根据nid获取地区名
	 * @param nid
	 * @return
	 */
	public String getAreaName(final Long nid);
	/**
	 * 
	 * 集团列表（所有的集团包括有无话费）
	 * 
	 * @param groups
	 */
	public List<Groups> searchGroupDistributeList(final Groups groups,
			final int currentPage, final int pageSize);
	
	

}
