package com.crm.client.service.inf;

import java.util.List;
import java.util.Map;

import com.crm.client.po.TClient;
import com.crm.client.po.TClientallot;
import com.crm.client.po.TClientinfo;
import com.crm.client.po.TGradelog;
import com.crm.group.po.VipCity;
import com.crm.group.po.VipProvince;
import com.crm.page.PageUtil;

/**
 * �ͻ�������Ϣ����
 * 
 * @author wjc
 * 
 */
public interface ClientServiceDao {
	
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
	 * 
	 * @param gradelog
	 * @return
	 */
	public Boolean updateClientGrade(TGradelog gradelog);

	/**
	 * �����������������пͻ���������
	 * 
	 * @param client
	 * @return
	 */
	public List searchAllClientInfo(TClient client);

	/**
	 * ������excel������List
	 * 
	 * @param client
	 * @return
	 */
	public List searchClientInfo(TClient client, String str[]);

	/**
	 * �޸ÿͻ���������
	 * 
	 * @param clientinfo
	 * @return
	 */
	public Boolean updateClientinfo(TClientinfo clientinfo);

	/**
	 * ������Excel
	 * 
	 * @param phones
	 * @return
	 */
	public Boolean exportClient(String phones[]);

	/**
	 * ȡ�ÿͻ�����
	 * 
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
	 * 
	 * @param client
	 * @return
	 */
	public Boolean deleteClient(TClient client);

	/**
	 * ���¿ͻ�������Ϣ
	 * 
	 * @param client
	 * @return
	 */
	public Boolean updateClient(TClient client);

	/**
	 * ��ѯ�ͻ��б�
	 * 
	 * @param client
	 * @return
	 */
	public List searchClient(TClient client, PageUtil pageUtil);

	/**
	 * ����������ѯ�ͻ��б�
	 * 
	 * @param client
	 * @param map
	 * @param pageUtil
	 * @return
	 */
	public List searchClientList(TClient client, Map map, PageUtil pageUtil);

	/**
	 * ȡ��һ���ͻ� ���ݵ绰����
	 * 
	 * @param phone
	 * @return
	 */
	public TClient getClient(String phone);

	/**
	 * ȡ��ʡ���б�
	 * 
	 * @param phone
	 * @return
	 */
	public List searchProvinceList();

	/**
	 * ȡ��ĳʡ�ݵĳ����б�
	 * 
	 * @param
	 * @return
	 */
	public List searchCityList(String proCode);

	/**
	 * ȡ�ó����µĵ���
	 * 
	 * @param
	 * @return
	 */
	public List searchAreaList(String vcity);

	/**
	 * ����ʡ��ȡ�ó���
	 * 
	 * @param pro
	 * @return
	 */
	public List searchCityList(VipProvince pro);

	/**
	 * ȡ�����
	 * 
	 * @return
	 */
	public List searchProince();

	/**
	 * ���ݳ���ȡ�õ���
	 * 
	 * @param city
	 * @return
	 */
	public List searchAreaList(VipCity city);

	/**
	 * ���ݸ���ID��ѯС��
	 * 
	 * @param pid
	 * @return
	 */
	public List searchSonData(Long pid);

	/**
	 * ��ѯ�ͻ��б�
	 * 
	 * @param client
	 * @return
	 */
	public TClient searchClient(TClient client);

	/**
	 * ȡ���ܼ�¼��
	 * 
	 * @param map
	 * @param client
	 * @return
	 */
	public Integer getCount(TClient client, Map map);

	/**
	 * ���ݸ���ID ��ѯ�����ֵ�
	 * 
	 * @param pid
	 * @return
	 */
	public List searchDataList(Long pid);

	/**
	 * �ж��Ƿ��и�����Ϣ
	 * 
	 * @param
	 * @return
	 */
	public Integer getCountByPhone(String phone);

	/**
	 * ɾ���ͻ�������Ϣ
	 * 
	 * @param clientinfo
	 * @return
	 */
	public Boolean deleteClientinfo(TClientinfo clientinfo);

	/**
	 * ��ӿͻ�������Ϣ
	 * 
	 * @param clientinfo
	 */
	public Boolean addClientinfo(TClientinfo clientinfo);

	/**
	 * ϵͳ����ɷ�����û��б�
	 * 
	 * @param client
	 * @param pageUtil
	 * @return
	 */
	public List clientList(TClient client, PageUtil pageUtil);

	/**
	 * ��ȡϵͳ����Ա�ɷ����û���¼
	 * 
	 * @param client
	 * @return
	 */
	public int getClientCount(TClient client);

	/**
	 * �������пͻ������б�
	 * 
	 * @return
	 */
	public List clientManagers();

	/**
	 * ��������ͻ�
	 * 
	 * @param allot
	 */
	public void addClientAllot(List list);

	/**
	 * ������Ӧ�ͻ�����Ҫ���տͻ����б�
	 * 
	 * @param manager
	 * @param pageUtil
	 * @return
	 */
	public List acceptList(String manager, TClientallot allot, PageUtil pageUtil);

	/**
	 * ������Ӧ�ͻ�����Ҫ���տͻ��ļ�¼��
	 * 
	 * @param manager
	 * @param pageUtil
	 * @return
	 */
	public int acceptCount(String manager, TClientallot allot);

	/**
	 * �޸�άϵ��,�޸Ŀͻ��������״̬
	 * 
	 * @param allot
	 */
	public void updateManager(String[] phones, String manager, Long[] ids,
			String state);

	/**
	 * ��ÿɵ���ÿͻ��б�
	 * 
	 * @return
	 */
	public List deployList(TClient client, PageUtil pageUtil);

	/**
	 * ��ÿɵ���ÿͻ���¼��
	 * 
	 * @return
	 */
	public int getDeployCount(TClient client);

	/**
	 * ��ӵ�������
	 * 
	 * @param list
	 * @param allot
	 */
	public void addImportClient(List list, List allot);

}
