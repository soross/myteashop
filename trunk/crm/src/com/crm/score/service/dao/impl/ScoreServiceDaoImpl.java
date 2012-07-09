package com.crm.score.service.dao.impl;

import java.util.List;


import com.crm.client.dao.inf.ClientDao;
import com.crm.client.po.TClient;
import com.crm.page.PageUtil;
import com.crm.score.dao.inf.PresentDao;
import com.crm.score.dao.inf.ScoreDao;
import com.crm.score.po.TApplyscore;
import com.crm.score.po.TBack;
import com.crm.score.po.TChange;
import com.crm.score.po.TChangeItem;
import com.crm.score.po.TMonthScore;
import com.crm.score.po.TPresent;
import com.crm.score.po.TScorelog;
import com.crm.score.po.TTotalScore;
import com.crm.score.po.TYearScore;
import com.crm.score.service.dao.inf.ScoreServiceDao;

/**
 * @author lxj
 * ���ַ����ʵ����
 */
public class ScoreServiceDaoImpl implements
		ScoreServiceDao {

	private ScoreDao scoreDao;
	private ClientDao clientDao;
	private PresentDao presentDao;
	
	public TApplyscore getApply(String phone) {		
		return scoreDao.getApply(phone);
	}

	public List searchApply(TApplyscore tapplyScore, PageUtil pageUtil) {
		
		return scoreDao.searchApply(tapplyScore, pageUtil);
	}

	public ScoreDao getScoreDao() {
		return scoreDao;
	}

	public void setScoreDao(ScoreDao scoreDao) {
		this.scoreDao = scoreDao;
	}

	public ClientDao getClientDao() {
		return clientDao;
	}

	public void setClientDao(ClientDao clientDao) {
		this.clientDao = clientDao;
	}

	public TClient getClient(String phone) {	
		return clientDao.getClient(phone);
	}

	public int getApplyCount(TApplyscore applyScore) {
		
		return scoreDao.getApplyCount(applyScore);
	}

	public boolean addApply(TApplyscore applyScore) {
		scoreDao.addApply(applyScore);
		return true;
	}

	public int getPresentCount(String phone) {
		return scoreDao.getPresentCount(phone);
	}

	public List presentList(String phone, PageUtil pageUtil) {
		return scoreDao.presentList(phone, pageUtil);
	}

	public TTotalScore getTotal(String phone) {
		return scoreDao.getTotal(phone);
	}

	public PresentDao getPresentDao() {
		return presentDao;
	}

	 /**
     * ��ȡ�û��ۼƻ���
     * @return
     */
	public void setPresentDao(PresentDao presentDao) {
		this.presentDao = presentDao;
	}

	/**
	 * ��ȡ��Ʒ����
	 * @param id
	 * @return
	 */
	public TPresent getPresent(Long id) {		
		return presentDao.getPresent(id);
	}

	  /**
     * ��ȡ��ǰ����
     * @param tableName
     * @return
     */
	public int getCurrent(String seq) {
		
		return scoreDao.getCurrent(seq);
	}

	 /**
     * ���ֶһ�����
     * @param present �޸���Ʒ����
     * @param change ��¼�һ���ʷ
     * @param total ���¿��û���
     * @param scoreLog ��¼�һ���־
     * @return
     */
	public boolean changeOperate(TPresent[] present, TChange change, TTotalScore total, TScorelog scoreLog) {
		scoreDao.addChange(change);
		scoreDao.addTScorelog(scoreLog);
		scoreDao.updateTotalScore(total);
		presentDao.updatePresentNum(present);		
		return true;
	}

	 /**
     * ��ȡ�һ���ʷ�б�
     * @param phone
     * @return
     */
	public List getChangeList(TChange change,PageUtil pageUtil) {
		return scoreDao.getChangeList(change, pageUtil);
	}

	 /**
     * ��ȡ�һ���¼��
     * @return
     */
	  public int getChangeNum(TChange change){		
		return scoreDao.getChangeCount(change);
	}

	 /**
     * ����id��ȡ�һ���Ϣ
     * @param id
     * @return
     */
	public TChange getChange(String id) {		
		return scoreDao.getChange(id);
	}

    /**
	 * ��ӻ��˼�¼
	 * @param back
	 * @return
	 */
    public boolean addBack(TBack back){
    	
    	return scoreDao.addBack(back);
    }

    /**
     * ��ȡ��ϸ����
     * @param id
     * @return
     */
	public TChangeItem getItem(Long id) {
		
		return scoreDao.getItem(id);
	}

	 /**
     * ������Ʒ����
     * @param present
     * @param back
     * @param totalScore
     * @param scoreLog
     * @return
     */
	public boolean doBack(TChangeItem item,TPresent[] present, TBack back, TTotalScore totalScore, TScorelog scoreLog) {
		scoreDao.addBack(back);
		scoreDao.updateItem(item);
		scoreDao.updateTotalScore(totalScore);
		presentDao.updatePresentNum(present);
		scoreDao.addTScorelog(scoreLog);
		return true;
	}

	/**
     * ��ѯ�»��ּ�¼��
     * @param monthScore
     * @return
     */
	public int getMonthCount(TMonthScore monthScore) {
		return scoreDao.getMonthCount(monthScore);
	}

    /**
     * ��ѯ�»���
     * @param monthScore
     * @return
     */
	public List searchMonth(TMonthScore monthScore, PageUtil pageUtil) {
		return scoreDao.searchMonth(monthScore, pageUtil);
	}
	
	/**
     * ��ѯ��Ȼ���
     * @param yearScore
     * @param pageUtil
     * @return
     */
    public List searchYear(TYearScore yearScore,PageUtil pageUtil){
    	return scoreDao.searchYear(yearScore, pageUtil);
    }
    
    /**
     * ��ȡ��Ȼ��ּ�¼��
     * @param yearScore
     * @return
     */
    public int getYearCount(TYearScore yearScore){
    	return scoreDao.getYearCount(yearScore);
    }
    
    /**
     * ��ѯ�ܻ���
     * @param totalScore
     * @param pageUtil
     * @return
     */
    public List searchTotal(TTotalScore totalScore,PageUtil pageUtil){
    	return scoreDao.searchTotal(totalScore, pageUtil);
    }
    
    /**
     * ��ȡ�ܻ��ּ�¼��
     * @param totalScore
     * @return
     */
    public int getTotalCount(TTotalScore totalScore){
    	return scoreDao.getTotalCount(totalScore);
    }
    
    /**
     * �һ���ѯ
     * @param change
     * @param pageUtil
     * @return
     */
    public List searchChange(TChange change,PageUtil pageUtil){
    	return scoreDao.searchChange(change, pageUtil);
    }
    
    /**
     * ��ȡ�һ���¼��
     * @param change
     * @return
     */
    public int getChangeCount(TChange change){
    	return scoreDao.getChangeCount(change);
    }
    
    /**
     * ��ѯ������־
     * @param log
     * @param pageUtil
     * @return
     */
    public List searchLog(TScorelog log,PageUtil pageUtil){
    	return scoreDao.searchLog(log, pageUtil);
    }
    
    /**
     * ��ȡ������־��¼��
     * @param log
     * @return
     */
    public int getLogCount(TScorelog log){
    	return scoreDao.getLogCount(log);
    }
}
