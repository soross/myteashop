package com.crm.sysdo.dao.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TCollect;
import com.crm.sysdo.po.TData;
import com.crm.sysdo.po.TFile;

/**
 * �����ֵ����Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface FileDao {
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(TFile File);
	/**
	 * ��������ֵ�
	 * @param data
	 * @return
	 */
	public Boolean addFile(TFile File);
	
	/**
	 * ɾ�������ֵ�
	 * @param File
	 * @return
	 */
	public Boolean deleteFile(TFile File);
	
	/**
	 * ���������ֵ�
	 * @param File
	 * @return
	 */
	public Boolean updateFile(TFile File);
	
	/**
	 * ȡ�������ֵ��б�
	 * @return
	 */
	public List searchFile(TFile File);
	
	/**
	 * ��ѯ�����ֵ����
	 * @param id
	 * @return
	 */
	public TFile seachFile(Long id);
	
	public List getFileList(final PageUtil pageUtil,final TFile File);
}
