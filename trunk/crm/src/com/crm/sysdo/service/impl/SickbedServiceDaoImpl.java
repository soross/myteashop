package com.crm.sysdo.service.impl;

import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.SickbedDao;
import com.crm.sysdo.po.TSickbed;
import com.crm.sysdo.service.inf.SickbedServiceDao;

public class SickbedServiceDaoImpl implements SickbedServiceDao{
	private SickbedDao sickbedDao ;

	public Boolean addSickbed(TSickbed sickbed) {
		// TODO Auto-generated method stub
		return this.sickbedDao.addSickbed(sickbed);
	}

	public Boolean deleteSickbed(Long id) {
		// TODO Auto-generated method stub
		return this.sickbedDao.deleteSickbed(id);
	}

	public Integer getSickbedCount() {
		// TODO Auto-generated method stub
		return this.sickbedDao.getSickbedCount();
	}

	public List getSickbedList(PageUtil pageUtil) {
		// TODO Auto-generated method stub
		return this.sickbedDao.getSickbedList(pageUtil);
	}

	public Integer getSeqNextValue() {
		// TODO Auto-generated method stub
		return this.sickbedDao.getSeqNextValue();
	}

	public Boolean updateSickbed(TSickbed sickbed) {
		// TODO Auto-generated method stub
		return this.sickbedDao.updateSickbed(sickbed);
	}

	public SickbedDao getSickbedDao() {
		return sickbedDao;
	}

	public void setSickbedDao(SickbedDao sickbedDao) {
		this.sickbedDao = sickbedDao;
	}

}
