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
 * 客户基本信息操作
 * 
 * @author wjc
 * 
 */
public interface ClientServiceDao {
	
	/**
	 * 取得日志记录数
	 * 
	 * @return
	 */
	public Integer getGradeLogCount();
	
	/**
	 * 取得等级修改日志
	 * @param pageUtil
	 * @return
	 */
	public List searchGradeLog(PageUtil pageUtil);

	/**
	 * 调整客户登记
	 * 
	 * @param gradelog
	 * @return
	 */
	public Boolean updateClientGrade(TGradelog gradelog);

	/**
	 * 导出满足条件的所有客户个性资料
	 * 
	 * @param client
	 * @return
	 */
	public List searchAllClientInfo(TClient client);

	/**
	 * 导出到excel的数据List
	 * 
	 * @param client
	 * @return
	 */
	public List searchClientInfo(TClient client, String str[]);

	/**
	 * 修该客户个性资料
	 * 
	 * @param clientinfo
	 * @return
	 */
	public Boolean updateClientinfo(TClientinfo clientinfo);

	/**
	 * 导出到Excel
	 * 
	 * @param phones
	 * @return
	 */
	public Boolean exportClient(String phones[]);

	/**
	 * 取得客户总数
	 * 
	 * @param client
	 * @return
	 */
	public Integer getCount(TClient client);

	/**
	 * 添加客户基本信息
	 * 
	 * @param client
	 * @return
	 */
	public Boolean addClient(TClient client);

	/**
	 * 删除基本信息
	 * 
	 * @param client
	 * @return
	 */
	public Boolean deleteClient(TClient client);

	/**
	 * 更新客户基本信息
	 * 
	 * @param client
	 * @return
	 */
	public Boolean updateClient(TClient client);

	/**
	 * 查询客户列表
	 * 
	 * @param client
	 * @return
	 */
	public List searchClient(TClient client, PageUtil pageUtil);

	/**
	 * 根据条件查询客户列表
	 * 
	 * @param client
	 * @param map
	 * @param pageUtil
	 * @return
	 */
	public List searchClientList(TClient client, Map map, PageUtil pageUtil);

	/**
	 * 取得一个客户 根据电话号码
	 * 
	 * @param phone
	 * @return
	 */
	public TClient getClient(String phone);

	/**
	 * 取得省份列表
	 * 
	 * @param phone
	 * @return
	 */
	public List searchProvinceList();

	/**
	 * 取得某省份的城市列表
	 * 
	 * @param
	 * @return
	 */
	public List searchCityList(String proCode);

	/**
	 * 取得城市下的地区
	 * 
	 * @param
	 * @return
	 */
	public List searchAreaList(String vcity);

	/**
	 * 根据省份取得城市
	 * 
	 * @param pro
	 * @return
	 */
	public List searchCityList(VipProvince pro);

	/**
	 * 取得身份
	 * 
	 * @return
	 */
	public List searchProince();

	/**
	 * 根据城市取得地区
	 * 
	 * @param city
	 * @return
	 */
	public List searchAreaList(VipCity city);

	/**
	 * 根据父类ID查询小类
	 * 
	 * @param pid
	 * @return
	 */
	public List searchSonData(Long pid);

	/**
	 * 查询客户列表
	 * 
	 * @param client
	 * @return
	 */
	public TClient searchClient(TClient client);

	/**
	 * 取得总记录数
	 * 
	 * @param map
	 * @param client
	 * @return
	 */
	public Integer getCount(TClient client, Map map);

	/**
	 * 根据父类ID 查询数据字典
	 * 
	 * @param pid
	 * @return
	 */
	public List searchDataList(Long pid);

	/**
	 * 判断是否有个性信息
	 * 
	 * @param
	 * @return
	 */
	public Integer getCountByPhone(String phone);

	/**
	 * 删除客户个性信息
	 * 
	 * @param clientinfo
	 * @return
	 */
	public Boolean deleteClientinfo(TClientinfo clientinfo);

	/**
	 * 添加客户个性信息
	 * 
	 * @param clientinfo
	 */
	public Boolean addClientinfo(TClientinfo clientinfo);

	/**
	 * 系统管理可分配的用户列表
	 * 
	 * @param client
	 * @param pageUtil
	 * @return
	 */
	public List clientList(TClient client, PageUtil pageUtil);

	/**
	 * 获取系统管理员可分配用户记录
	 * 
	 * @param client
	 * @return
	 */
	public int getClientCount(TClient client);

	/**
	 * 查找所有客户经理列表
	 * 
	 * @return
	 */
	public List clientManagers();

	/**
	 * 新增分配客户
	 * 
	 * @param allot
	 */
	public void addClientAllot(List list);

	/**
	 * 查找相应客户经理要接收客户的列表
	 * 
	 * @param manager
	 * @param pageUtil
	 * @return
	 */
	public List acceptList(String manager, TClientallot allot, PageUtil pageUtil);

	/**
	 * 查找相应客户经理要接收客户的记录数
	 * 
	 * @param manager
	 * @param pageUtil
	 * @return
	 */
	public int acceptCount(String manager, TClientallot allot);

	/**
	 * 修改维系人,修改客户经理分配状态
	 * 
	 * @param allot
	 */
	public void updateManager(String[] phones, String manager, Long[] ids,
			String state);

	/**
	 * 获得可调配得客户列表
	 * 
	 * @return
	 */
	public List deployList(TClient client, PageUtil pageUtil);

	/**
	 * 获得可调配得客户记录数
	 * 
	 * @return
	 */
	public int getDeployCount(TClient client);

	/**
	 * 添加导入数据
	 * 
	 * @param list
	 * @param allot
	 */
	public void addImportClient(List list, List allot);

}
