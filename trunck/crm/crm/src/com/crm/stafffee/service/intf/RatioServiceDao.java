package com.crm.stafffee.service.intf;

import java.util.List;

import com.crm.page.PageUtil;
import com.crm.stafffee.po.TStaffGetfee;

public interface RatioServiceDao {
	/**
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getRatioCount();
	
	/**
	 * ȡ���ܼ�¼��-����
	 * 
	 * @return
	 */
	public Integer getRatioCount(TStaffGetfee Ratio);

	/**
	 * ȡ�ü���
	 * 
	 * @return
	 */
	public List getRatioList(PageUtil pageUtil);
	
	/**
	 * ȡ�ü���
	 * 
	 * @return
	 */
	public List getRatioList(TStaffGetfee Ratio, PageUtil pageUtil);

	public List getRatioList();

	public TStaffGetfee getRatioByID(Long id);

	/**
	 * ��Ա
	 * 
	 * @param Ratio
	 * @return
	 */
	public Boolean addRatio(TStaffGetfee Ratio);

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
	public Boolean updateRatio(TStaffGetfee Ratio);

	/**
	 * ɾ����Ա
	 * 
	 * @param id
	 * @return
	 */
	public Boolean deleteRatio(Long id);
}
