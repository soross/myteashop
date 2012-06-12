package com.crm.group.dao.inf;

import java.util.List;

import com.crm.group.po.Groups;
import com.crm.group.po.TGrouplinker;
import com.crm.group.po.TGrouplog;
import com.crm.group.po.TOldgroupmess;
import com.crm.group.po.VipArea;
import com.crm.group.po.VipCity;
import com.crm.group.po.VipProvince;
import com.crm.page.PageUtil;
import com.crm.pub.po.TData;

/**
 * 接口 GroupDao 实现集团 增，删，改，查
 * 
 * @version 0.5
 * @author hyq $2009/10/26
 */
public interface GroupDao {
	/**
	 * 添加集团
	 */
	public void addGroup(Groups group);

	/**
	 * 删除集团
	 */
	public void deleteGroup(Groups group);

	/**
	 * 修改集团
	 */
	public void updateGroup(Groups group,String gid);
	 /**
  	 * 修改无改变行业集团
  	 */
      public void updateGroup(Groups group);
	/**
	 * @param userid
	 *            根据userid，查找集团信息
	 * @return TUser
	 */
	public Groups getGroup(String groupid);

	/**
	 * 查询集团
	 */
	public List searchGroup(Groups group, PageUtil pageutil);

	/**
	 * 获取集团总数
	 */
	public int getCount(Groups group);

	/**
	 * 获取省份
	 */
	public List getProvince();

	/**
	 * 获取城市
	 */
	public List getCity(VipCity city);

	/**
	 * 获取行业
	 */
	public List getData(TData data);

	

	/**
	 * 获取对应省份
	 */
	public VipProvince getPro(String privince);

	/**
	 * 获取对应城市
	 */
	public VipCity getCity(String city, String privince);

	/**
	 * 获取对应行业和对应级别
	 */
	public TData getData(Long data);

	/**
	 * 获取对应级别
	 */
	public TData getLevel(String data);

	/**
	 * 修改集团状态
	 */
	public void updateState(Groups group);
	/**
  	 * 得到集团下一个id
  	 */ 
	public String getGroupId(String gtime,String province, String city, String calling);
	 /**
	 *添加集团日志
	 */ 
  public void addglog(TGrouplog glog);
    /**
  	 * 添加集团历史记录
  	 */ 
   public void addhistory(TOldgroupmess hismess);
   /**
	 * 获取对应地区
	 */
   public VipArea getArea( Long area);
   /**
	 * 获取地区
	 */
   public List getAreaList(final String city);
   /**
	 * 通过名字找地区对象
	 */
   public VipArea getAreas( Long nid);
   /**
    * 
    * 添加联系人
    */
  public void addLinker(TGrouplinker linker);
  /**
   * 
   * 修改联系人
   */
  public void updateLinker(TGrouplinker linker);
  /**
   * 
   * 删除联系人
   */
  public void deleteLinker(TGrouplinker linker);
  /**
   * 
   * 得到联系人
   */
  public TGrouplinker getLinker(String lid);
  /**
	 * 修改集团级别
	 */
  public void updateLevel(Groups group);
}
