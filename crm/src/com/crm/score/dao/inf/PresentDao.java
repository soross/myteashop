package com.crm.score.dao.inf;

import java.util.List;

import com.crm.page.PageUtil;
import com.crm.score.po.TPresent;

/**
 * @author lxj
 * 礼品接口,包括礼品的增，删，改，查操作
 */
public interface PresentDao {

	/**
	 * 添加礼品
	 * @param present
	 * @return
	 */
	public boolean addPresent(TPresent present);
	
	/**
	 * 修改礼品
	 * @param present
	 * @return
	 */
	public boolean updatePresent(TPresent present);
	
	
	/**
	 * 获取礼品对象
	 * @param id
	 * @return
	 */
	public TPresent getPresent(Long id);
	
	/**
	 * 查找礼品列表
	 * @param present
	 * @param pageUtil
	 * @return
	 */
	public List searchPresent(TPresent present,PageUtil pageUtil);
	
	/**
	 * 获取记录数
	 * @param present
	 * @return
	 */
	public int getCount(TPresent present);
	
	/**
	 * 批量删除礼品
	 * @param ids
	 * @return
	 */
	public boolean deletePresents(Long[] ids);
	
	/**
	 * 修改礼品数量
	 * @return
	 */
	public boolean updatePresentNum(TPresent prensent[]);
	
	  /**
     * 获取符合条件的礼品(如积分是否够)的记录数
     * @return
     */
    public int getPresentCount(TPresent present);
    
    /**
     * 查询符合条件的礼品(如积分是否够)
     * @param pageUtil
     * @return
     */
    public List presentList(TPresent present,PageUtil pageUtil);
}
