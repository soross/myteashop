package com.crm.op.service.intf;

import java.util.List;

import com.crm.op.po.TToolinfoPayout;
import com.crm.page.PageUtil;

public interface ToolinfoPayoutServiceDao {
	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getToolinfoPayoutCount();
	
	/**
	 * 取得总记录数-条件
	 * 
	 * @return
	 */
	public Integer getToolinfoPayoutCount(TToolinfoPayout ToolinfoPayout);
	
	public Integer getToolinfoChargingPriceCount(TToolinfoPayout ToolinfoPayout);
	
	public Integer getToolinfoPayPriceCount(TToolinfoPayout ToolinfoPayout);

	/**
	 * 取得集合
	 * 
	 * @return
	 */
	public List getToolinfoPayoutList(PageUtil pageUtil);
	
	/**
	 * 取得集合
	 * 
	 * @return
	 */
	public List getToolinfoPayoutList(TToolinfoPayout ToolinfoPayout, PageUtil pageUtil);
	
	public List getToolinfoChargingPriceList(TToolinfoPayout ToolinfoPayout, PageUtil pageUtil);
	
	public List getToolinfoPayPriceList(TToolinfoPayout ToolinfoPayout, PageUtil pageUtil);

	public List getToolinfoPayoutList();

	public TToolinfoPayout getToolinfoPayoutByID(Long id);

	/**
	 * 会员
	 * 
	 * @param ToolinfoPayout
	 * @return
	 */
	public Boolean addToolinfoPayout(TToolinfoPayout ToolinfoPayout);

	/**
	 * 取得序列的下一个ID
	 * 
	 * @return
	 */
	public Integer getSeqNextValue();

	/**
	 * 修改会员
	 * 
	 * @param clientrule
	 * @param rulelog
	 * @return
	 */
	public Boolean updateToolinfoPayout(TToolinfoPayout ToolinfoPayout);

	/**
	 * 删除会员
	 * 
	 * @param id
	 * @return
	 */
	public Boolean deleteToolinfoPayout(Long id);
}
