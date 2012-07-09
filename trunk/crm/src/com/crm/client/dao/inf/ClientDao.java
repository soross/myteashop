package com.crm.client.dao.inf;

import java.util.List;
import java.util.Map;

import com.crm.client.po.TClient;
import com.crm.client.po.TClientallot;
import com.crm.client.po.TGradelog;
import com.crm.page.PageUtil;

/**
 * �ͻ�������Ϣ����
 * @author wjc
 *
 */
public interface ClientDao {
	/**
	 * ȡ����־��¼��
	 * 
	 * @return
	 */
	public Integer getGradeLogCount();
	
	/**
	 * ȡ�õȼ��޸���־
	 * @param pageUtil
	 * @return
	 */
	public List searchGradeLog(PageUtil pageUtil);
	
	/**
	 * �����ͻ��Ǽ�
	 * @param gradelog
	 * @return
	 */
	public Boolean updateClientGrade(TGradelog gradelog);
	
	/**
	 * ����������ѯ�ͻ��б�
	 * @param client
	 * @param map
	 * @param pageUtil
	 * @return
	 */	 
	public List searchClientList(TClient client,Map map, PageUtil pageUtil);
	
	/**
	 * ������Excel
	 * @param phones
	 * @return
	 */
	public Boolean exportClient(String[] phones);
	/**
	 * ȡ��һ���ͻ�  ���ݵ绰����
	 * @param phone
	 * @return
	 */
	public TClient getClient(String phone);
	/**
	 * ȡ���ܼ�¼��
	 * @param map
	 * @param client
	 * @return
	 */
	public Integer getCount(final TClient client,Map map);
	
	/**
	 * ȡ���ܼ�¼��
	 * @param client
	 * @return
	 */
	public Integer getCount(TClient client);
	
	/**
	 * ��ӿͻ�������Ϣ
	 * 
	 * @param client
	 * @return
	 */
	public Boolean addClient(TClient client);
	
	/**
	 * ɾ��������Ϣ
	 * @param client
	 * @return
	 */
	public Boolean deleteClient(TClient client);
	
	/**
	 * ���¿ͻ�������Ϣ
	 * @param client
	 * @return
	 */	
	public Boolean updateClient(TClient client);
	/**
	 * ��ѯ�ͻ��б�
	 * @param client 
	 * @return
	 */
	public TClient searchClient(TClient client);
	
	/**
	 * ��ѯ�ͻ��б�
	 * @param client pageUtil
	 * @return
	 */
	public List searchClient(TClient client,PageUtil pageUtil);
	
	/**
	 * ȡ��ʡ���б�
	 * 
	 * @return
	 */
	public List searchProvinceList();
	/**
	 * ȡ��ĳʡ�ݵĳ����б�
	 * @param 
	 * @return
	 */
	public List searchCityList(String proCode);
	/**
	 * ȡ�ó����µĵ���
	 * @param 
	 * @return
	 */
	public List searchAreaList(String vcity);
	
	/**
	 * �����Ƿ�Ϊ�����û�
	 * @param client
	 * @return
	 */
	public Boolean updateIsGroup(TClient client);
	
   
    /**
     * ϵͳ����ɷ�����û��б�
     * @param client
     * @param pageUtil
     * @return
     */
    public List clientList(TClient client,PageUtil pageUtil);
    
    /**
     * ��ȡϵͳ����Ա�ɷ����û���¼
     * @param client
     * @return
     */
    public int getClientCount(TClient client);
    
    /**
     * ��������ͻ�
     * @param allot
     */
    public void addClientAllot(List list);
    
  
    /**
     * ������Ӧ�ͻ�����Ҫ���տͻ����б�
     * @param manager
     * @param pageUtil
     * @return
     */
    public List acceptList(String manager,TClientallot allot,PageUtil pageUtil);
    
    /**
     * ������Ӧ�ͻ�����Ҫ���տͻ��ļ�¼��
     * @param manager
     * @param pageUtil
     * @return
     */
    public int acceptCount(String manager,TClientallot allot);
    
    /**
     * �޸�άϵ��
     * @param allot
     */
    public void updateManager(String[] phones,String manager);
    
    /**
     * �޸Ŀͻ��������״̬
     * @param phones
     * @param manager
     * @param state
     */
    public void updateState(Long[] ids,String state);
    
    /**
     * ��ÿɵ���ÿͻ��б�
     * @return
     */
    public List deployList(TClient client,PageUtil pageUtil);
    
    /**
     * ��ÿɵ���ÿͻ���¼��
     * @return
     */
    public int getDeployCount(TClient client);
    
    /**
     * ������������
     * @param list
     */
    public void addImportClient(TClient client);
}
