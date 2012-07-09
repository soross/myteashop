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
 * �����ӿ�ʵ���� GroupServiceDaoImpl
 * ʵ�ּ��� ����ɾ���ģ���
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
				
				TGrouplog grouplog = new TGrouplog();// ��־�������
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
				}// ��ʷ��¼�������
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
	 *��Ӽ�����־
	 */ 
	public void addglog(TGrouplog glog) {
		groupDao.addglog(glog);
		
	}
	/**
  	 * ��Ӽ�����ʷ��¼
  	 */ 
	public void addhistory(TOldgroupmess hismess) {
		groupDao.addhistory(hismess);
		
	}
	/**
 	 * �޸��޸ı���ҵ����
 	 */
	public void updateGroup(Groups group) {
		groupDao.updateGroup(group);
		
	}
	/**
 	 * ��ȡ��Ӧ����
 	 */

	public VipArea getArea(Long area) {
		
		return groupDao.getArea(area);
	}
	/**
 	 * ��ȡ����
 	 */
	public List getAreaList(String city) {
		
		return groupDao.getAreaList(city);
	}
	/**
 	 * ͨ���������ҵ�������
 	 */
	public VipArea getAreas(Long nid) {
		
		return groupDao.getAreas(nid);
	}
	/**
     * 
     * �����ϵ��
     */
	public void addLinker(TGrouplinker linker) {
		groupDao.addLinker(linker);
		
	}
	/**
	    * 
	    * �޸���ϵ��
	    */
	public void deleteLinker(TGrouplinker linker) {
		groupDao.deleteLinker(linker);
		
	}
	 /**
	    * 
	    * ɾ����ϵ��
	    */
	public void updateLinker(TGrouplinker linker) {
		groupDao.updateLinker(linker);
		
	}
	/**
     * 
     * �õ���ϵ��
     */
    
	public TGrouplinker getLinker(String lid) {
		return groupDao.getLinker(lid);
		
	}
	
	/**
	 * �޸ļ��ż���
	 */
	public void updateLevel(Groups group) {
		groupDao.updateLevel(group);
		
	}
   
	
}
