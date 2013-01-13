package com.crm.score.service.dao.inf;

import java.util.List;

import com.crm.page.PageUtil;
import com.crm.score.po.TPresent;

/**
 * @author lxj
 * ��Ʒ�����ӿ�
 */
public interface PresentServiceDao {

	/**
	 * �����Ʒ
	 * @param present
	 * @return
	 */
	public boolean addPresent(TPresent present);
	
	/**
	 * �޸���Ʒ
	 * @param present
	 * @return
	 */
	public boolean updatePresent(TPresent present);
	
	/**
	 * ��ȡ��Ʒ����
	 * @param id
	 * @return
	 */
	public TPresent getPresent(Long id);
	
	/**
	 * ������Ʒ�б�
	 * @param present
	 * @param pageUtil
	 * @return
	 */
	public List searchPresent(TPresent present,PageUtil pageUtil);
	
	/**
	 * ��ȡ��¼��
	 * @param present
	 * @return
	 */
	public int getCount(TPresent present);
	
	/**
	 * ����ɾ����Ʒ
	 * @param ids
	 * @return
	 */
	public boolean deletePresents(Long[] ids);
	
	  /**
     * ��ȡ������������Ʒ(������Ƿ�)�ļ�¼��
     * @return
     */
    public int getPresentCount(TPresent present);
    
    /**
     * ��ѯ������������Ʒ(������Ƿ�)
     * @param pageUtil
     * @return
     */
    public List presentList(TPresent present,PageUtil pageUtil);
}
