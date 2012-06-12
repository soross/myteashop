package com.crm.score.service.dao.inf;

import java.util.List;

import com.crm.client.po.TClient;
import com.crm.page.PageUtil;
import com.crm.score.po.TApplyscore;
import com.crm.score.po.TBack;
import com.crm.score.po.TChange;
import com.crm.score.po.TChangeItem;
import com.crm.score.po.TMonthScore;
import com.crm.score.po.TPresent;
import com.crm.score.po.TScorelog;
import com.crm.score.po.TTotalScore;
import com.crm.score.po.TYearScore;

/**
 * @author lxj
 * ���ַ����ӿ�
 */
public interface ScoreServiceDao {

	/**
	 * ��õ�����������û�
	 * @return
	 */
	public TApplyscore getApply(String phone);
	
    /**
     * ����������û��б�
     * @param tapplyScore
     * @param pageUtil
     * @return
     */
    public List searchApply(TApplyscore tapplyScore,PageUtil pageUtil);
    
    /**
	 * ȡ��һ���ͻ�  ���ݵ绰����
	 * @param phone
	 * @return
	 */
	public TClient getClient(String phone);
	
	/**
     * ��ȡ���������¼��
     * @return
     */
    public int getApplyCount(TApplyscore applyScore);
    
    /**
     * ��ӻ���������Ϣ
     * @param applyScore
     * @return
     */
    public boolean addApply(TApplyscore applyScore);
    
    /**
     * ��ѯ������������Ʒ(������Ƿ�)
     * @param pageUtil
     * @return
     */
    public List presentList(String phone,PageUtil pageUtil);
    
    /**
     * ��ȡ�û���ѡ��Ʒ�ļ�¼��
     * @return
     */
    public int getPresentCount(String phone);
    
    /**
     * ��ȡ�û��ۼƻ���
     * @return
     */
    public TTotalScore getTotal(String phone);
    
    /**
	 * ��ȡ��Ʒ����
	 * @param id
	 * @return
	 */
	public TPresent getPresent(Long id);
	
	  /**
     * ��ȡ��ǰ����
     * @param tableName
     * @return
     */
    public int getCurrent(String seq);
    
    
    /**
     * ���ֶһ�����
     * @param present �޸���Ʒ����
     * @param change ��¼�һ���ʷ
     * @param total ���¿��û���
     * @param scoreLog ��¼�һ���־
     * @return
     */
    public boolean changeOperate(TPresent[] present,TChange change,TTotalScore total,TScorelog scoreLog);
    
    /**
     * ��ȡ�һ���ʷ�б�
     * @param phone
     * @return
     */
    public List getChangeList(TChange change,PageUtil pageUtil);
    
    
    /**
     * ��ȡ�һ���¼��
     * @return
     */
    public int getChangeNum(TChange change);
    
    /**
     * ����id��ȡ�һ���Ϣ
     * @param id
     * @return
     */
    public TChange getChange(String id);
    
    /**
	 * ��ӻ��˼�¼
	 * @param back
	 * @return
	 */
    public boolean addBack(TBack back);
    
    /**
     * ��ȡ��ϸ����
     * @param id
     * @return
     */
    public TChangeItem getItem(Long id);
    
    /**
     * ������Ʒ����
     * @param present
     * @param back
     * @param totalScore
     * @param scoreLog
     * @return
     */
    public boolean doBack(TChangeItem item,TPresent[] present,TBack back,TTotalScore totalScore,TScorelog scoreLog);

    /**
     * ��ѯ�»���
     * @param monthScore
     * @return
     */
    public List searchMonth(TMonthScore monthScore,PageUtil pageUtil);
    
    /**
     * ��ȡ�»��ּ�¼��
     * @param monthScore
     * @return
     */
    public int getMonthCount(TMonthScore monthScore);
    
    /**
     * ��ѯ��Ȼ���
     * @param yearScore
     * @param pageUtil
     * @return
     */
    public List searchYear(TYearScore yearScore,PageUtil pageUtil);
    
    /**
     * ��ȡ��Ȼ��ּ�¼��
     * @param yearScore
     * @return
     */
    public int getYearCount(TYearScore yearScore);
    
    /**
     * ��ѯ�ܻ���
     * @param totalScore
     * @param pageUtil
     * @return
     */
    public List searchTotal(TTotalScore totalScore,PageUtil pageUtil);
    
    /**
     * ��ȡ�ܻ��ּ�¼��
     * @param totalScore
     * @return
     */
    public int getTotalCount(TTotalScore totalScore);
    
    /**
     * �һ���ѯ
     * @param change
     * @param pageUtil
     * @return
     */
    public List searchChange(TChange change,PageUtil pageUtil);
    
    /**
     * ��ȡ�һ���¼��
     * @param change
     * @return
     */
    public int getChangeCount(TChange change);
    
    /**
     * ��ѯ������־
     * @param log
     * @param pageUtil
     * @return
     */
    public List searchLog(TScorelog log,PageUtil pageUtil);
    
    /**
     * ��ȡ������־��¼��
     * @param log
     * @return
     */
    public int getLogCount(TScorelog log);
}
