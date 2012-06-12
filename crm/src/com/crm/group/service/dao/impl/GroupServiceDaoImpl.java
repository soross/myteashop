package com.crm.group.service.dao.impl;


import java.lang.reflect.InvocationTargetException;
import java.security.acl.Group;
import java.util.Date;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;

import com.crm.group.dao.inf.GroupDao;
import com.crm.group.po.Groups;
import com.crm.group.po.TGrouplinker;
import com.crm.group.po.TGrouplog;
import com.crm.group.po.TOldgroupmess;
import com.crm.group.po.VipArea;
import com.crm.group.po.VipCity;
import com.crm.group.po.VipProvince;
import com.crm.group.service.dao.inf.GroupServiceDao;
import com.crm.page.PageUtil;
import com.crm.pub.po.TData;
import com.crm.pub.po.TUser;
/**
 * 服务层接口实现类 GroupServiceDaoImpl
 * 实现集团 增，删，改，查
 * @version 0.5
 * @author hyq $2009/10/26
 */
public class GroupServiceDaoImpl implements GroupServiceDao{
    private GroupDao groupDao;

	public GroupDao getGroupDao() {
		return groupDao;
	}

	public void setGroupDao(GroupDao groupDao) {
		this.groupDao = groupDao;
	}

	public void addGroup(Groups group) {
		groupDao.addGroup(group);
		
	}
	
	public void addGroups(List<Groups> groups) {
		for (Groups group : groups) {
			Groups gr=groupDao.getGroup(group.getGroupid());
			if(gr==null){
				
				TGrouplog grouplog = new TGrouplog();// 日志表加数据
				grouplog.setOpens("0");
				grouplog.setOpentime(new Date());
				grouplog.setOperationer(group.getManager());
				grouplog.setGroupid(group.getGroupid());
				TOldgroupmess hmess = new TOldgroupmess();
				try {
					BeanUtils.copyProperties(hmess, group);
				} catch (IllegalAccessException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (InvocationTargetException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}// 历史记录表加数据
				hmess.setWorker(group.getManager());
				hmess.setWorktime(new Date());
				hmess.setWorktype("0");
				hmess.setGroupid(group.getGroupid());

				groupDao.addGroup(group);
				groupDao.addglog(grouplog);
				groupDao.addhistory(hmess);
				
			
			}
		}
		
		
	}

	public void deleteGroup(Groups group) {
		
		Groups gr=groupDao.getGroup(group.getGroupid());
		groupDao.deleteGroup(gr);
		
	}

	public int getCount(Groups group) {
		
		return groupDao.getCount(group);
	}

	public Groups getGroup(String groupid) {
		
		return groupDao.getGroup(groupid);
	}

	public List searchGroup(Groups group, PageUtil pageutil) {
		
		return groupDao.searchGroup(group, pageutil);
	}

	public void updateGroup(Groups group,String gid) {
		groupDao.updateGroup(group,gid);
		
	}

	public List getCity(VipCity city) {
		
		return groupDao.getCity(city);
	}

	public List getData(TData data) {
		
		return groupDao.getData(data);
	}

	public List getProvince() {
		
		return groupDao.getProvince();
	}
	

	public VipCity getCity(String city, String privince) {
		
		return groupDao.getCity(city, privince);
	}

	public TData getData(Long data) {
		
		return groupDao.getData(data);
	}

	public VipProvince getPro(String privince) {
		
		return groupDao.getPro(privince);
	}

	public TData getLevel(String data) {
		
		return groupDao.getLevel(data);
	}

	public void updateState(Groups group) {
		groupDao.updateState(group);
		
	}

	public String getGroupId(String gtime,String province, String city, String calling) {
		return groupDao.getGroupId(gtime,province, city, calling);
	}
	/**
	 *添加集团日志
	 */ 
	public void addglog(TGrouplog glog) {
		groupDao.addglog(glog);
		
	}
	/**
  	 * 添加集团历史记录
  	 */ 
	public void addhistory(TOldgroupmess hismess) {
		groupDao.addhistory(hismess);
		
	}
	/**
 	 * 修改无改变行业集团
 	 */
	public void updateGroup(Groups group) {
		groupDao.updateGroup(group);
		
	}
	/**
 	 * 获取对应地区
 	 */

	public VipArea getArea(Long area) {
		
		return groupDao.getArea(area);
	}
	/**
 	 * 获取地区
 	 */
	public List getAreaList(String city) {
		
		return groupDao.getAreaList(city);
	}
	/**
 	 * 通过地区名找地区对象
 	 */
	public VipArea getAreas(Long nid) {
		
		return groupDao.getAreas(nid);
	}
	/**
     * 
     * 添加联系人
     */
	public void addLinker(TGrouplinker linker) {
		groupDao.addLinker(linker);
		
	}
	/**
	    * 
	    * 修改联系人
	    */
	public void deleteLinker(TGrouplinker linker) {
		groupDao.deleteLinker(linker);
		
	}
	 /**
	    * 
	    * 删除联系人
	    */
	public void updateLinker(TGrouplinker linker) {
		groupDao.updateLinker(linker);
		
	}
	/**
     * 
     * 得到联系人
     */
    
	public TGrouplinker getLinker(String lid) {
		return groupDao.getLinker(lid);
		
	}
	
	/**
	 * 修改集团级别
	 */
	public void updateLevel(Groups group) {
		groupDao.updateLevel(group);
		
	}
   
	
}
