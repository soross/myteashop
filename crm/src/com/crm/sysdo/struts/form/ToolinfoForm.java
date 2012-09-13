/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.crm.sysdo.struts.form;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

/** 
 * MyEclipse Struts
 * Creation date: 10-23-2009
 * 
 * XDoclet definition:
 * @struts.form name="dataForm"
 */
public class ToolinfoForm extends ActionForm {
	/*
	 * Generated fields
	 */
	private Long id;
	private String toolname;
	private String wubi;
	private String pinyin;
	private String code;
	private String aliasname;
	private String aliaspinyin;
	private String aliaswubi;
	private String state;
	private String obj;
	private String spec;
	private String weight;
	private String helpunit;
	private String saleunit;
	private String conver;
	private String material;
	private String prodadd;
	private Long savemax;
	private Long savemin;
	private String prodbussion;
	private String ybtype;
	private String ybcode;
	private String ybname;
	private String nbtype;
	private String nbcode;
	private String nbname;
	private String payself;
	private String mincost;
	private String salecost;
	private String maxcost;
	private Date createDate;
	private String refcode;
	private String remark;

	/*
	 * Generated Methods
	 */

	/** 
	 * Method validate
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
	 * @param mapping
	 * @param request
	 */
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.state="0";
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getToolname() {
		return toolname;
	}

	public void setToolname(String toolname) {
		this.toolname = toolname;
	}

	public String getWubi() {
		return wubi;
	}

	public void setWubi(String wubi) {
		this.wubi = wubi;
	}

	public String getPinyin() {
		return pinyin;
	}

	public void setPinyin(String pinyin) {
		this.pinyin = pinyin;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getAliasname() {
		return aliasname;
	}

	public void setAliasname(String aliasname) {
		this.aliasname = aliasname;
	}

	public String getAliaspinyin() {
		return aliaspinyin;
	}

	public void setAliaspinyin(String aliaspinyin) {
		this.aliaspinyin = aliaspinyin;
	}

	public String getAliaswubi() {
		return aliaswubi;
	}

	public void setAliaswubi(String aliaswubi) {
		this.aliaswubi = aliaswubi;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getObj() {
		return obj;
	}

	public void setObj(String obj) {
		this.obj = obj;
	}

	public String getSpec() {
		return spec;
	}

	public void setSpec(String spec) {
		this.spec = spec;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getHelpunit() {
		return helpunit;
	}

	public void setHelpunit(String helpunit) {
		this.helpunit = helpunit;
	}

	public String getSaleunit() {
		return saleunit;
	}

	public void setSaleunit(String saleunit) {
		this.saleunit = saleunit;
	}

	public String getConver() {
		return conver;
	}

	public void setConver(String conver) {
		this.conver = conver;
	}

	public String getMaterial() {
		return material;
	}

	public void setMaterial(String material) {
		this.material = material;
	}

	public String getProdadd() {
		return prodadd;
	}

	public void setProdadd(String prodadd) {
		this.prodadd = prodadd;
	}

	public Long getSavemax() {
		return savemax;
	}

	public void setSavemax(Long savemax) {
		this.savemax = savemax;
	}

	public Long getSavemin() {
		return savemin;
	}

	public void setSavemin(Long savemin) {
		this.savemin = savemin;
	}

	public String getProdbussion() {
		return prodbussion;
	}

	public void setProdbussion(String prodbussion) {
		this.prodbussion = prodbussion;
	}

	public String getYbtype() {
		return ybtype;
	}

	public void setYbtype(String ybtype) {
		this.ybtype = ybtype;
	}

	public String getYbcode() {
		return ybcode;
	}

	public void setYbcode(String ybcode) {
		this.ybcode = ybcode;
	}

	public String getYbname() {
		return ybname;
	}

	public void setYbname(String ybname) {
		this.ybname = ybname;
	}

	public String getNbtype() {
		return nbtype;
	}

	public void setNbtype(String nbtype) {
		this.nbtype = nbtype;
	}

	public String getNbcode() {
		return nbcode;
	}

	public void setNbcode(String nbcode) {
		this.nbcode = nbcode;
	}

	public String getNbname() {
		return nbname;
	}

	public void setNbname(String nbname) {
		this.nbname = nbname;
	}

	public String getPayself() {
		return payself;
	}

	public void setPayself(String payself) {
		this.payself = payself;
	}

	public String getMincost() {
		return mincost;
	}

	public void setMincost(String mincost) {
		this.mincost = mincost;
	}

	public String getSalecost() {
		return salecost;
	}

	public void setSalecost(String salecost) {
		this.salecost = salecost;
	}

	public String getMaxcost() {
		return maxcost;
	}

	public void setMaxcost(String maxcost) {
		this.maxcost = maxcost;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getRefcode() {
		return refcode;
	}

	public void setRefcode(String refcode) {
		this.refcode = refcode;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	
	
}