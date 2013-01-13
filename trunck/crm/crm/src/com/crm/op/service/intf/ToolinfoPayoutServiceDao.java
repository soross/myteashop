package com.crm.op.service.intf;

import java.util.List;

import com.crm.op.po.TToolinfoPayout;
import com.crm.page.PageUtil;

public interface ToolinfoPayoutServiceDao {
	/**
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getToolinfoPayoutCount();
	
	/**
	 * ȡ���ܼ�¼��-����
	 * 
	 * @return
	 */
	public Integer getToolinfoPayoutCount(TToolinfoPayout ToolinfoPayout);
	
	public Integer getToolinfoChargingPriceCount(TToolinfoPayout ToolinfoPayout);
	
	public Integer getToolinfoPayPriceCount(TToolinfoPayout ToolinfoPayout);

	/**
	 * ȡ�ü���
	 * 
	 * @return
	 */
	public List getToolinfoPayoutList(PageUtil pageUtil);
	
	/**
	 * ȡ�ü���
	 * 
	 * @return
	 */
	public List getToolinfoPayoutList(TToolinfoPayout ToolinfoPayout, PageUtil pageUtil);
	
	public List getToolinfoChargingPriceList(TToolinfoPayout ToolinfoPayout, PageUtil pageUtil);
	
	public List getToolinfoPayPriceList(TToolinfoPayout ToolinfoPayout, PageUtil pageUtil);

	public List getToolinfoPayoutList();

	public TToolinfoPayout getToolinfoPayoutByID(Long id);

	/**
	 * ��Ա
	 * 
	 * @param ToolinfoPayout
	 * @return
	 */
	public Boolean addToolinfoPayout(TToolinfoPayout ToolinfoPayout);

	/**
	 * ȡ�����е���һ��ID
	 * 
	 * @return
	 */
	public Integer getSeqNextValue();

	/**
	 * �޸Ļ�Ա
	 * 
	 * @param clientrule
	 * @param rulelog
	 * @return
	 */
	public Boolean updateToolinfoPayout(TToolinfoPayout ToolinfoPayout);

	/**
	 * ɾ����Ա
	 * 
	 * @param id
	 * @return
	 */
	public Boolean deleteToolinfoPayout(Long id);
}
