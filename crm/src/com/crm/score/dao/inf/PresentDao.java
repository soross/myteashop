package com.crm.score.dao.inf;

import java.util.List;

import com.crm.page.PageUtil;
import com.crm.score.po.TPresent;

/**
 * @author lxj
 * ��Ʒ�ӿ�,������Ʒ������ɾ���ģ������
 */
public interface PresentDao {

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
	 * �޸���Ʒ����
	 * @return
	 */
	public boolean updatePresentNum(TPresent prensent[]);
	
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
