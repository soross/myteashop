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
	 * ȡ����־��¼��
	 * 
	 * @return
	 */
	public Integer getGradeLogCount(){
		return this.clientDao.getGradeLogCount();
	}
	
	/**
	 * ȡ�õȼ��޸���־
	 * @param pageUtil
	 * @return
	 */
	public List searchGradeLog(PageUtil pageUtil){
		return this.clientDao.searchGradeLog(pageUtil);
	}
	
	
	/**
	 * �����ͻ��Ǽ�
	 * @param gradelog
	 * @return
	 */
	public Boolean updateClientGrade(TGradelog gradelog){
		return this.clientDao.updateClientGrade( gradelog);
	}
	
	/**
	 * �����������������пͻ���������
	 * @param client
	 * @return
	 */
	public List searchAllClientInfo(TClient client){
		return this.clientInfoDao.searchAllClientInfo(client);
	}
	
	/**
	 * ������excel������List
	 * 
	 * @param client
	 * @return
	 */
	public List searchClientInfo(TClient client,String str[]){
		return this.clientInfoDao.searchClientInfo(client,str);
	}
	
	/**
	 * �޸ÿͻ���������
	 * @param clientinfo
	 * @return
	 */
	public Boolean updateClientinfo(TClientinfo clientinfo){
		return clientInfoDao.updateClientinfo(clientinfo);
	}
	
	/**
	 * ���ݸ���ID ��ѯ�����ֵ�
	 * @param pid
	 * @return
	 */
	public List searchDataList(Long pid){
		return this.dataDao.searchSonData(pid);
	}
	
	/**
	 * ����������ѯ�ͻ��б�
	 * @param client
	 * @param map
	 * @param pageUtil
	 * @return
	 */	 
	public List searchClientList(TClient client,Map map, PageUtil pageUtil){
		
		return this.clientDao.searchClientList(client,map, pageUtil);
	}
	
	/**
	 * ������Excel
	 * @param phones
	 * @return
	 */
	public Boolean exportClient(String phones[]){
		
		return this.clientDao.exportClient(phones);
	}
	
	/**
	 * ��ѯ�ͻ��б�
	 * @param client 
	 * @return
	 */
	public TClient searchClient(TClient client){
		return this.clientDao.searchClient(client);
	}
	
	/**
	 * ȡ�ó����µĵ���
	 * @param 
	 * @return
	 */
	public List searchAreaList(String vcity){
		return this.clientDao.searchAreaList(vcity);
	}
	
	/**
	 * ȡ��ĳʡ�ݵĳ����б�
	 * @param 
	 * @return
	 */
	public List searchCityList(String proCode){
		return this.clientDao.searchCityList(proCode);
	}
	
	/**
	 * ȡ��ʡ���б�
	 * @param phone
	 * @return
	 */
	public List searchProvinceList(){
		return this.clientDao.searchProvinceList();		
	}
	
	/**
	 * ȡ��һ���ͻ�  ���ݵ绰����
	 * @param phone
	 * @return
	 */
	public TClient getClient(String phone){		
		return this.clientDao.getClient(phone);
	}
	
	/**
	 * ��ѯ�ͻ��б�
	 * @param client
	 * @return
	 */
	public List searchClient(TClient client,final PageUtil pageUtil){
		return this.clientDao.searchClient(client, pageUtil);		
	}
	
	/**
	 * ȡ�ÿͻ�����
	 * @param client
	 * @return
	 */
	public Integer getCount(TClient client){
		return this.clientDao.getCount(client);		
	}
	/**
	 * ȡ���ܼ�¼��
	 * @param map
	 * @param client
	 * @return
	 */
	public Integer getCount(TClient client,Map map){
		return this.clientDao.getCount(client, map);
	}
	
	/**
	 * ��ӿͻ�
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
	 * ����ʡ��ȡ�ó���
	 * @param pro
	 * @return
	 */
	//public List searchCityList(VipProvince pro){
	//	return vipDao.searchCityList(pro);
	//}
	
	/**
	 * ȡ�����
	 * @return
	 */
	public List searchProince(){
		return vipDao.searchProince();
	}
	
	/**
	 * ���ݳ���ȡ�õ���
	 * @param city
	 * @return
	 */
	//public List searchAreaList(VipCity city){
	//	return vipDao.searchAreaList(city);
	//}
	
	/**
	 * ���ݸ���ID��ѯС��
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
	 * �ж��Ƿ��и�����Ϣ
	 * @param 
	 * @return
	 */
	public Integer getCountByPhone(String phone ){
		return this.clientInfoDao.getCountByPhone(phone);
	}
	
	/**
	 * ɾ���ͻ�������Ϣ
	 * @param clientinfo
	 * @return
	 */
	public Boolean deleteClientinfo(TClientinfo clientinfo){
		return this.clientInfoDao.deleteClientinfo(clientinfo);		
	}
	/**
	 * ��ӿͻ�������Ϣ
	 * @param clientinfo
	 */
	public Boolean addClientinfo(TClientinfo clientinfo){
		return this.clientInfoDao.addClientinfo(clientinfo);
	}
	
	 /**
     * ϵͳ����ɷ�����û��б�
     * @param client
     * @param pageUtil
     * @return
     */
    public List clientList(TClient client,PageUtil pageUtil){
    	return clientDao.clientList(client, pageUtil);
    }
    
    /**
     * ��ȡϵͳ����Ա�ɷ����û���¼
     * @param client
     * @return
     */
    public int getClientCount(TClient client){
    	return clientDao.getClientCount(client);
    }
    
    /**
     * �������пͻ������б�
    * @return
    */
   public List clientManagers(){
	   return userDao.clientManagers();
   }
   
   /**
    * ��������ͻ�
    * @param allot
    */
   public void addClientAllot(List list){
	   clientDao.addClientAllot(list);
   }

   /**
    * ������Ӧ�ͻ�����Ҫ���տͻ����б�
    * @param manager
    * @param pageUtil
    * @return
    */
   public List acceptList(String manager,TClientallot allot,PageUtil pageUtil){
	   return clientDao.acceptList(manager,allot,pageUtil);
   }
   
   /**
    * ������Ӧ�ͻ�����Ҫ���տͻ��ļ�¼��
    * @param manager
    * @param pageUtil
    * @return
    */
   public int acceptCount(String manager,TClientallot allot){
	   return clientDao.acceptCount(manager,allot);
   }
   
   /**
    * �޸�άϵ��,�޸Ŀͻ��������״̬
    * @param allot
    */
   public void updateManager(String[] phones,String manager,Long[] ids,String state){
	   if(phones!=null&&phones.length>0){
		   clientDao.updateManager(phones, manager);
	   }  
	   clientDao.updateState(ids, state);
   }
   
   /**
    * ��ÿɵ���ÿͻ��б�
    * @return
    */
   public List deployList(TClient client,PageUtil pageUtil){
	   return clientDao.deployList(client, pageUtil);
   }
   
   /**
    * ��ÿɵ���ÿͻ���¼��
    * @return
    */
   public int getDeployCount(TClient client){
	   return clientDao.getDeployCount(client);
   }
   
   /**
	 * ��ӵ�������
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
