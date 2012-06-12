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
 * ���ż�¼��
 * @param groups
 * @return
 */
public int getCount(final Groups groups);
/**
 * �ͻ������б�
 */
public List<TUser> searchManagerList();
/**
 * ���ŵȼ��б�
 */
public List<TData> searchLevelList();
/**
 * ������ҵ�б�
 */
public List<TData> searchVocationList();
/**
 * ���������б�
 * @return
 */
public List<TData> searchOptype();
/**
 * ʡ���б�
 */
public List<VipProvince> searchProvinceList();

/**
 * ���Ŷ���
 * 
 * @param group
 */

public Groups getGroup(String groupid);
/**
 * ������ϵ��
 */

public TGrouplinker getLinker( final String groupid);
/**
 * ��ȡ�ϸ�������
 * @param groupid
 * @param nowDate
 * @return
 */
	public TGroupfee getGroupFee(final String groupid, final String nowDate);
	
	/**
	 * ��ȡ6����ʵ�ʻ���
	 */
	public List<TGroupfee> tGroupfeeList(final String groupid,final Integer year,final Integer month);
	
	/**
	 * ��ѯ�����û��б� 
	 */
	
	public List<TClient> clientList(String groupid,String nowDate,final int currentPage,final int pageSize);
/**
 * �����û���
 */
	public Integer clientCount(final String groupid, final String nowDate);
	/**
	 * �����û�������Ϣ�б�
	 */
	public List<TFee> userFeeList(final String groupid,
			final int currentPage, final int pageSize);
	/**
	 * ���Ѽ�¼��
	 * @param groupid
	 * @return
	 */
	public Integer userFeeListCount(final String groupid);
	/**
	 * 
	 * �����б�
	 * 
	 * @param groups
	 */
	public List<Groups> searchGroupList(final Groups groups,
			final int currentPage, final int pageSize,final Integer fcount,final Integer tcount,final Integer fmoney,final Integer tmoney) ;
	/**
	 * ���ż�¼��
	 * 
	 * @return
	 */
	public int getCount(final Groups groups,final Integer fcount,final Integer tcount,final Integer fmoney,final Integer tmoney);
	/**
	 * �춯�б�
	 * @param groups
	 * @param currentPage
	 * @param pageSize
	 * @return
	 */
	public List<TGrouplog> searchtLogList(final Groups groups,
			final int currentPage, final int pageSize);
	/**
	 * �����춯��
	 * @param groups
	 * @param currentPage
	 * @param pageSize
	 * @return
	 */
	public Integer gettLogCount(final Groups groups);
	/**
	 * ȡ��ĳʡ�ݵĳ����б�
	 * @param 
	 * @return
	 */
	public List searchCityList(String proCode);
	/**
	 * ����VCODE ȡ��ʡ
	 * @param vcode
	 * @return
	 */
	public String getProvName( final String vcode);
	/**
	 * ����nid��ȡ������
	 * @param nid
	 * @return
	 */
	public String getAreaName(final Long nid);
	/**
	 * 
	 * �����б����еļ��Ű������޻��ѣ�
	 * 
	 * @param groups
	 */
	public List<Groups> searchGroupDistributeList(final Groups groups,
			final int currentPage, final int pageSize);
	
	

}
