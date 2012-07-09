package com.crm.group.service.dao.inf;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;

import com.crm.client.po.TClient;
import com.crm.group.po.Groups;
import com.crm.group.po.TOldgroupmess;
import com.crm.group.po.VipProvince;
import com.crm.pub.GlobVar;
import com.crm.pub.po.TData;
import com.crm.pub.po.TUser;

public interface GroupDistributeServiceDAO {
	/**
	 * ��ѯ�����б�
	 * 
	 * @param groups
	 */
	public List<Groups> searchGroupDistributeList(Groups groups,
			int currentPage, int pageSize);

	/**
	 * ����δ�����б�
	 * 
	 * @param groups
	 */
	public List<Groups> searchNoDistributeList(final Groups groups);

	/**
	 * �ͻ������б�
	 * 
	 */

	public List<TUser> searchManagerList();

	/**
	 * �����ѷ����б�
	 * 
	 * @param groups
	 * 
	 */
	public List<Groups> searchhasDisList(final Groups groups);

	/**
	 * ���ż�¼��
	 * 
	 * @param groups
	 * @return
	 */
	public int getCount(final Groups groups);

	/**
	 * ����
	 * 
	 * @param group
	 */
	public boolean distributeManager(final String[] groupids,
			final String managerid);

	/**
	 * ���Ŷ���
	 * 
	 * @param group
	 * @return
	 */
	public Groups getGroup(Groups group);

	/**
	 * �����û���
	 * 
	 * @param groupid
	 * @return
	 */

	public Integer guserListCount(final String groupid);

	/**
	 * ���ſͻ��б�
	 * 
	 * @param groupid
	 * @return
	 */

	public List<TClient> guserList(final String groupid, final int currentPage,
			final int pageSize);

	/**
	 * ȡ��һ���ͻ� �����ֻ�����
	 * 
	 * @param phone
	 * @return
	 */
	public TClient getClient(String phone);

	/**
	 * ������ҵ�б�
	 */
	public List<TData> searchVocationList();

	/**
	 * Ʒ���б�
	 */
	public List<TData> searchBrandList();

	/**
	 * ʡ���б�
	 */
	public List<VipProvince> searchProvinceList();

	/**
	 * ��ѯ������ʷ�б�
	 * 
	 * @param groups
	 * 
	 */

	public List<TOldgroupmess> searchGrHistList(final Groups groups,
			final int currentPage, final int pageSize);
	/**
	 * ��ѯ������ʷ��¼��
	 * 
	 * @param groups
	 * 
	 */

	public Integer searchGrHistCount(final Groups groups);
	/**
	 * ���������б�
	 * @return
	 */
	public List<TData> searchOptype();
	/**
	 * ���ŵȼ��б�
	 */

	public List<TData> searchLevelList();
}
