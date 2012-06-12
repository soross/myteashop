package com.crm.sysdo.struts.form;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

public class SickbedForm extends ActionForm {

	/**
	 * πÊ‘Ú±Ì
	 */
	private Long id;

	private String sickbed;
	
	private Long spec;

	/**
	 * Method validate
	 * 
	 * @param mapping
	 * @param request
	 * @return ActionErrors
	 */
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * Method reset
	 * 
	 * @param mapping
	 * @param request
	 */
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		// TODO Auto-generated method stub
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getSickbed() {
		return sickbed;
	}

	public void setSickbed(String sickbed) {
		this.sickbed = sickbed;
	}

	public Long getSpec() {
		return spec;
	}

	public void setSpec(Long spec) {
		this.spec = spec;
	}

}
