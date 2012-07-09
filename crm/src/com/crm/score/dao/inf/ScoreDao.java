package com.crm.score.dao.inf;

import java.util.List;

import com.crm.page.PageUtil;
import com.crm.score.po.TApplyscore;
import com.crm.score.po.TBack;
import com.crm.score.po.TChange;
import com.crm.score.po.TChangeItem;
import com.crm.score.po.TMonthScore;
import com.crm.score.po.TScorelog;
import com.crm.score.po.TTotalScore;
import com.crm.score.po.TYearScore;

/**
 * @author lxj
 * 积分接口,包括积分消费查询，操作查询，以及申请等方法
 */
public interface ScoreDao {
	
	/**
	 * 获得单个已申请的用户
	 * @return
	 */
	public TApplyscore getApply(String phone);
	
    /**
     * 获得已申请用户列表
     * @param tapplyScore
     * @param pageUtil
     * @return
     */
    public List searchApply(TApplyscore tapplyScore,PageUtil pageUtil);
    
    
    /**
     * 获取积分申请记录数
     * @return
     */
    public int getApplyCount(TApplyscore score);
    
    /**
     * 添加积分申请信息
     * @param applyScore
     * @return
     */
    public boolean addApply(TApplyscore applyScore);
    
    /**
     * 查询符合条件的礼品(如积分是否够)
     * @param pageUtil
     * @return
     */
    public List presentList(String phone,PageUtil pageUtil);
    
    /**
     * 获取符合条件的礼品(如积分是否够)的记录数
     * @return
     */
    public int getPresentCount(String phone);
    
    /**
     * 获取用户累计积分
     * @return
     */
    public TTotalScore getTotal(String phone); 
    
    /**
     * 更新累计积分
     * @param total
     * @return
     */
    public boolean updateTotalScore(TTotalScore total);
    
    
    /**
     * 获取当前序列
     * @param tableName
     * @return
     */
    public int getCurrent(String seq);
    
    
    /**
     * 添加兑换记录
     * @param change
     * @return
     */
    public boolean addChange(TChange change);
    
    /**
     * 添加积分操作日志
     * @param scoreLog
     * @return
     */
    public boolean addTScorelog(TScorelog scoreLog);
    
    /**
     * 获取兑换历史列表
     * @param phone
     * @return
     */
    public List getChangeList(TChange change,PageUtil pageUtil);
    
    /**
     * 获取兑换记录数
     * @return
     */
    public int getChangeNum(TChange change);
    
    
    /**
     * 根据id获取兑换信息
     * @param id
     * @return
     */
    public TChange getChange(String id);
    
    /**
	 * 添加回退记录
	 * @param back
	 * @return
	 */
    public boolean addBack(TBack back);
    
    /**
     * 获取明细单项
     * @param id
     * @return
     */
    public TChangeItem getItem(Long id);
    
    /**
     * 修改兑换明细
     * @param item
     * @return
     */
    public boolean updateItem(TChangeItem item);
    
    /**
     * 查询月积分
     * @param monthScore
     * @return
     */
    public List searchMonth(TMonthScore monthScore,PageUtil pageUtil);
    
    /**
     * 获取月积分记录数
     * @param monthScore
     * @return
     */
    public int getMonthCount(TMonthScore monthScore);
    
    /**
     * 查询年度积分
     * @param yearScore
     * @param pageUtil
     * @return
     */
    public List searchYear(TYearScore yearScore,PageUtil pageUtil);
    
    /**
     * 获取年度积分记录数
     * @param yearScore
     * @return
     */
    public int getYearCount(TYearScore yearScore);
    
    /**
     * 查询总积分
     * @param totalScore
     * @param pageUtil
     * @return
     */
    public List searchTotal(TTotalScore totalScore,PageUtil pageUtil);
    
    /**
     * 获取总积分记录数
     * @param totalScore
     * @return
     */
    public int getTotalCount(TTotalScore totalScore);
    
    /**
     * 兑换查询
     * @param change
     * @param pageUtil
     * @return
     */
    public List searchChange(TChange change,PageUtil pageUtil);
    
    /**
     * 获取兑换记录数
     * @param change
     * @return
     */
    public int getChangeCount(TChange change);
    
    /**
     * 查询积分日志
     * @param log
     * @param pageUtil
     * @return
     */
    public List searchLog(TScorelog log,PageUtil pageUtil);
    
    /**
     * 获取积分日志记录数
     * @param log
     * @return
     */
    public int getLogCount(TScorelog log);
    
}
