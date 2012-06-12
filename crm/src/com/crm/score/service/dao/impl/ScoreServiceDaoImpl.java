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
 * 积分服务层实现类
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
     * 获取用户累计积分
     * @return
     */
	public void setPresentDao(PresentDao presentDao) {
		this.presentDao = presentDao;
	}

	/**
	 * 获取礼品对象
	 * @param id
	 * @return
	 */
	public TPresent getPresent(Long id) {		
		return presentDao.getPresent(id);
	}

	  /**
     * 获取当前序列
     * @param tableName
     * @return
     */
	public int getCurrent(String seq) {
		
		return scoreDao.getCurrent(seq);
	}

	 /**
     * 积分兑换操作
     * @param present 修改礼品数量
     * @param change 记录兑换历史
     * @param total 更新可用积分
     * @param scoreLog 记录兑换日志
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
     * 获取兑换历史列表
     * @param phone
     * @return
     */
	public List getChangeList(TChange change,PageUtil pageUtil) {
		return scoreDao.getChangeList(change, pageUtil);
	}

	 /**
     * 获取兑换记录数
     * @return
     */
	  public int getChangeNum(TChange change){		
		return scoreDao.getChangeCount(change);
	}

	 /**
     * 根据id获取兑换信息
     * @param id
     * @return
     */
	public TChange getChange(String id) {		
		return scoreDao.getChange(id);
	}

    /**
	 * 添加回退记录
	 * @param back
	 * @return
	 */
    public boolean addBack(TBack back){
    	
    	return scoreDao.addBack(back);
    }

    /**
     * 获取明细单项
     * @param id
     * @return
     */
	public TChangeItem getItem(Long id) {
		
		return scoreDao.getItem(id);
	}

	 /**
     * 回退礼品操作
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
     * 查询月积分记录数
     * @param monthScore
     * @return
     */
	public int getMonthCount(TMonthScore monthScore) {
		return scoreDao.getMonthCount(monthScore);
	}

    /**
     * 查询月积分
     * @param monthScore
     * @return
     */
	public List searchMonth(TMonthScore monthScore, PageUtil pageUtil) {
		return scoreDao.searchMonth(monthScore, pageUtil);
	}
	
	/**
     * 查询年度积分
     * @param yearScore
     * @param pageUtil
     * @return
     */
    public List searchYear(TYearScore yearScore,PageUtil pageUtil){
    	return scoreDao.searchYear(yearScore, pageUtil);
    }
    
    /**
     * 获取年度积分记录数
     * @param yearScore
     * @return
     */
    public int getYearCount(TYearScore yearScore){
    	return scoreDao.getYearCount(yearScore);
    }
    
    /**
     * 查询总积分
     * @param totalScore
     * @param pageUtil
     * @return
     */
    public List searchTotal(TTotalScore totalScore,PageUtil pageUtil){
    	return scoreDao.searchTotal(totalScore, pageUtil);
    }
    
    /**
     * 获取总积分记录数
     * @param totalScore
     * @return
     */
    public int getTotalCount(TTotalScore totalScore){
    	return scoreDao.getTotalCount(totalScore);
    }
    
    /**
     * 兑换查询
     * @param change
     * @param pageUtil
     * @return
     */
    public List searchChange(TChange change,PageUtil pageUtil){
    	return scoreDao.searchChange(change, pageUtil);
    }
    
    /**
     * 获取兑换记录数
     * @param change
     * @return
     */
    public int getChangeCount(TChange change){
    	return scoreDao.getChangeCount(change);
    }
    
    /**
     * 查询积分日志
     * @param log
     * @param pageUtil
     * @return
     */
    public List searchLog(TScorelog log,PageUtil pageUtil){
    	return scoreDao.searchLog(log, pageUtil);
    }
    
    /**
     * 获取积分日志记录数
     * @param log
     * @return
     */
    public int getLogCount(TScorelog log){
    	return scoreDao.getLogCount(log);
    }
}
