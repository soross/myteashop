package com.crm.group.dao.inf;

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


public interface GroupViewDao {
	
	/**
	 * 集团等级列表
	 */
	public List<TData> searchLevelList();
	/**
	 * 集团行业列表
	 */
	public List<TData> searchVocationList();
	/**
	 * 品牌列表
	 */
	public List<TData> searchBrandList();
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
		 * 集团用户列表
		 */
		public List<TClient> clientList(String groupid,String nowDate,final int currentPage,final int pageSize);
		
		//用户数
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
		 * 根据VCODE 取得省
		 */
		public String getProvName( final String vcode);
		/**
		 * 根据nid获取地区名
		 * @param nid
		 * @return
		 */
		public String getAreaName(final Long nid);
		

}
