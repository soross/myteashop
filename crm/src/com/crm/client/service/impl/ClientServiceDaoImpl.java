package com.crm.client.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.crm.client.dao.inf.ClientDao;
import com.crm.client.dao.inf.ClientInfoDao;
import com.crm.client.po.TClient;
import com.crm.client.po.TClientallot;
import com.crm.client.po.TClientinfo;
import com.crm.client.po.TGradelog;
import com.crm.client.service.inf.ClientServiceDao;
import com.crm.page.PageUtil;
import com.crm.pub.dao.inf.UserDao;
import com.crm.pub.dao.inf.VipDao;
import com.crm.sysdo.dao.inf.DataDao;

public class ClientServiceDaoImpl implements ClientServiceDao {
	
	private ClientDao clientDao;
	
	private ClientInfoDao clientInfoDao;
	
	private VipDao vipDao;
	
	private DataDao dataDao;
	
	private UserDao userDao;
	
	/**
	 * 取得日志记录数
	 * 
	 * @return
	 */
	public Integer getGradeLogCount(){
		return this.clientDao.getGradeLogCount();
	}
	
	/**
	 * 取得等级修改日志
	 * @param pageUtil
	 * @return
	 */
	public List searchGradeLog(PageUtil pageUtil){
		return this.clientDao.searchGradeLog(pageUtil);
	}
	
	
	/**
	 * 调整客户登记
	 * @param gradelog
	 * @return
	 */
	public Boolean updateClientGrade(TGradelog gradelog){
		return this.clientDao.updateClientGrade( gradelog);
	}
	
	/**
	 * 导出满足条件的所有客户个性资料
	 * @param client
	 * @return
	 */
	public List searchAllClientInfo(TClient client){
		return this.clientInfoDao.searchAllClientInfo(client);
	}
	
	/**
	 * 导出到excel的数据List
	 * 
	 * @param client
	 * @return
	 */
	public List searchClientInfo(TClient client,String str[]){
		return this.clientInfoDao.searchClientInfo(client,str);
	}
	
	/**
	 * 修该客户个性资料
	 * @param clientinfo
	 * @return
	 */
	public Boolean updateClientinfo(TClientinfo clientinfo){
		return clientInfoDao.updateClientinfo(clientinfo);
	}
	
	/**
	 * 根据父类ID 查询数据字典
	 * @param pid
	 * @return
	 */
	public List searchDataList(Long pid){
		return this.dataDao.searchSonData(pid);
	}
	
	/**
	 * 根据条件查询客户列表
	 * @param client
	 * @param map
	 * @param pageUtil
	 * @return
	 */	 
	public List searchClientList(TClient client,Map map, PageUtil pageUtil){
		
		return this.clientDao.searchClientList(client,map, pageUtil);
	}
	
	/**
	 * 导出到Excel
	 * @param phones
	 * @return
	 */
	public Boolean exportClient(String phones[]){
		
		return this.clientDao.exportClient(phones);
	}
	
	/**
	 * 查询客户列表
	 * @param client 
	 * @return
	 */
	public TClient searchClient(TClient client){
		return this.clientDao.searchClient(client);
	}
	
	/**
	 * 取得城市下的地区
	 * @param 
	 * @return
	 */
	public List searchAreaList(String vcity){
		return this.clientDao.searchAreaList(vcity);
	}
	
	/**
	 * 取得某省份的城市列表
	 * @param 
	 * @return
	 */
	public List searchCityList(String proCode){
		return this.clientDao.searchCityList(proCode);
	}
	
	/**
	 * 取得省份列表
	 * @param phone
	 * @return
	 */
	public List searchProvinceList(){
		return this.clientDao.searchProvinceList();		
	}
	
	/**
	 * 取得一个客户  根据电话号码
	 * @param phone
	 * @return
	 */
	public TClient getClient(String phone){		
		return this.clientDao.getClient(phone);
	}
	
	/**
	 * 查询客户列表
	 * @param client
	 * @return
	 */
	public List searchClient(TClient client,final PageUtil pageUtil){
		return this.clientDao.searchClient(client, pageUtil);		
	}
	
	/**
	 * 取得客户总数
	 * @param client
	 * @return
	 */
	public Integer getCount(TClient client){
		return this.clientDao.getCount(client);		
	}
	/**
	 * 取得总记录数
	 * @param map
	 * @param client
	 * @return
	 */
	public Integer getCount(TClient client,Map map){
		return this.clientDao.getCount(client, map);
	}
	
	/**
	 * 添加客户
	 */
	public Boolean addClient(TClient client) {		
		return this.clientDao.addClient(client);
	}

	public Boolean deleteClient(TClient client) {	
		return this.clientDao.deleteClient(client);
	}

	public Boolean updateClient(TClient client) {
		// TODO Auto-generated method stub
		return null;
	}

	public ClientDao getClientDao() {
		return clientDao;
	}

	public void setClientDao(ClientDao clientDao) {
		this.clientDao = clientDao;
	}

	public ClientInfoDao getClientInfoDao() {
		return clientInfoDao;
	}

	public void setClientInfoDao(ClientInfoDao clientInfoDao) {
		this.clientInfoDao = clientInfoDao;
	}

	public VipDao getVipDao() {
		return vipDao;
	}

	public void setVipDao(VipDao vipDao) {
		this.vipDao = vipDao;
	}
	
	/**
	 * 根据省份取得城市
	 * @param pro
	 * @return
	 */
	//public List searchCityList(VipProvince pro){
	//	return vipDao.searchCityList(pro);
	//}
	
	/**
	 * 取得身份
	 * @return
	 */
	public List searchProince(){
		return vipDao.searchProince();
	}
	
	/**
	 * 根据城市取得地区
	 * @param city
	 * @return
	 */
	//public List searchAreaList(VipCity city){
	//	return vipDao.searchAreaList(city);
	//}
	
	/**
	 * 根据父类ID查询小类
	 * @param pid
	 * @return
	 */
	public List searchSonData(Long pid){
		return this.dataDao.searchSonData(pid);
	}

	public DataDao getDataDao() {
		return dataDao;
	}

	public void setDataDao(DataDao dataDao) {
		this.dataDao = dataDao;
	}
	/**
	 * 判断是否有个性信息
	 * @param 
	 * @return
	 */
	public Integer getCountByPhone(String phone ){
		return this.clientInfoDao.getCountByPhone(phone);
	}
	
	/**
	 * 删除客户个性信息
	 * @param clientinfo
	 * @return
	 */
	public Boolean deleteClientinfo(TClientinfo clientinfo){
		return this.clientInfoDao.deleteClientinfo(clientinfo);		
	}
	/**
	 * 添加客户个性信息
	 * @param clientinfo
	 */
	public Boolean addClientinfo(TClientinfo clientinfo){
		return this.clientInfoDao.addClientinfo(clientinfo);
	}
	
	 /**
     * 系统管理可分配的用户列表
     * @param client
     * @param pageUtil
     * @return
     */
    public List clientList(TClient client,PageUtil pageUtil){
    	return clientDao.clientList(client, pageUtil);
    }
    
    /**
     * 获取系统管理员可分配用户记录
     * @param client
     * @return
     */
    public int getClientCount(TClient client){
    	return clientDao.getClientCount(client);
    }
    
    /**
     * 查找所有客户经理列表
    * @return
    */
   public List clientManagers(){
	   return userDao.clientManagers();
   }
   
   /**
    * 新增分配客户
    * @param allot
    */
   public void addClientAllot(List list){
	   clientDao.addClientAllot(list);
   }

   /**
    * 查找相应客户经理要接收客户的列表
    * @param manager
    * @param pageUtil
    * @return
    */
   public List acceptList(String manager,TClientallot allot,PageUtil pageUtil){
	   return clientDao.acceptList(manager,allot,pageUtil);
   }
   
   /**
    * 查找相应客户经理要接收客户的记录数
    * @param manager
    * @param pageUtil
    * @return
    */
   public int acceptCount(String manager,TClientallot allot){
	   return clientDao.acceptCount(manager,allot);
   }
   
   /**
    * 修改维系人,修改客户经理分配状态
    * @param allot
    */
   public void updateManager(String[] phones,String manager,Long[] ids,String state){
	   if(phones!=null&&phones.length>0){
		   clientDao.updateManager(phones, manager);
	   }  
	   clientDao.updateState(ids, state);
   }
   
   /**
    * 获得可调配得客户列表
    * @return
    */
   public List deployList(TClient client,PageUtil pageUtil){
	   return clientDao.deployList(client, pageUtil);
   }
   
   /**
    * 获得可调配得客户记录数
    * @return
    */
   public int getDeployCount(TClient client){
	   return clientDao.getDeployCount(client);
   }
   
   /**
	 * 添加导入数据
	 * 
	 * @param list
	 * @param allot
	 */
	public void addImportClient(List list, List allots){
		List allotList = new ArrayList();;
		for(Object obj:list){
			TClient client = (TClient)obj;
			TClient cl = clientDao.getClient(client.getPhone());
			if(cl==null){
				clientDao.addImportClient(client);
					for(Object o:allots){
						TClientallot allot=(TClientallot)o;
						if(allot.getPhone().equals(client.getPhone())){
							 allotList.add(allot);
						}
				}
			
			}
		}
		
	 clientDao.addClientAllot(allotList);
		
	}
   
	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
}
