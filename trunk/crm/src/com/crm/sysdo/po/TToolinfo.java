package com.crm.sysdo.po;

import java.util.Date;

/**
 * TToolinfo entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TToolinfo implements java.io.Serializable {

	// Fields

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

	// Constructors

	/** default constructor */
	public TToolinfo() {
	}

	/** full constructor */
	public TToolinfo(String toolname, String wubi, String pinyin, String code,
			String aliasname, String aliaspinyin, String aliaswubi,
			String state, String obj, String spec, String weight,
			String helpunit, String saleunit, String conver, String material,
			String prodadd, Long savemax, Long savemin, String prodbussion,
			String ybtype, String ybcode, String ybname, String nbtype,
			String nbcode, String nbname, String payself, String mincost,
			String salecost, String maxcost, Date createDate, String refcode,
			String remark) {
		this.toolname = toolname;
		this.wubi = wubi;
		this.pinyin = pinyin;
		this.code = code;
		this.aliasname = aliasname;
		this.aliaspinyin = aliaspinyin;
		this.aliaswubi = aliaswubi;
		this.state = state;
		this.obj = obj;
		this.spec = spec;
		this.weight = weight;
		this.helpunit = helpunit;
		this.saleunit = saleunit;
		this.conver = conver;
		this.material = material;
		this.prodadd = prodadd;
		this.savemax = savemax;
		this.savemin = savemin;
		this.prodbussion = prodbussion;
		this.ybtype = ybtype;
		this.ybcode = ybcode;
		this.ybname = ybname;
		this.nbtype = nbtype;
		this.nbcode = nbcode;
		this.nbname = nbname;
		this.payself = payself;
		this.mincost = mincost;
		this.salecost = salecost;
		this.maxcost = maxcost;
		this.createDate = createDate;
		this.refcode = refcode;
		this.remark = remark;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getToolname() {
		return this.toolname;
	}

	public void setToolname(String toolname) {
		this.toolname = toolname;
	}

	public String getWubi() {
		return this.wubi;
	}

	public void setWubi(String wubi) {
		this.wubi = wubi;
	}

	public String getPinyin() {
		return this.pinyin;
	}

	public void setPinyin(String pinyin) {
		this.pinyin = pinyin;
	}

	public String getCode() {
		return this.code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getAliasname() {
		return this.aliasname;
	}

	public void setAliasname(String aliasname) {
		this.aliasname = aliasname;
	}

	public String getAliaspinyin() {
		return this.aliaspinyin;
	}

	public void setAliaspinyin(String aliaspinyin) {
		this.aliaspinyin = aliaspinyin;
	}

	public String getAliaswubi() {
		return this.aliaswubi;
	}

	public void setAliaswubi(String aliaswubi) {
		this.aliaswubi = aliaswubi;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getObj() {
		return this.obj;
	}

	public void setObj(String obj) {
		this.obj = obj;
	}

	public String getSpec() {
		return this.spec;
	}

	public void setSpec(String spec) {
		this.spec = spec;
	}

	public String getWeight() {
		return this.weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getHelpunit() {
		return this.helpunit;
	}

	public void setHelpunit(String helpunit) {
		this.helpunit = helpunit;
	}

	public String getSaleunit() {
		return this.saleunit;
	}

	public void setSaleunit(String saleunit) {
		this.saleunit = saleunit;
	}

	public String getConver() {
		return this.conver;
	}

	public void setConver(String conver) {
		this.conver = conver;
	}

	public String getMaterial() {
		return this.material;
	}

	public void setMaterial(String material) {
		this.material = material;
	}

	public String getProdadd() {
		return this.prodadd;
	}

	public void setProdadd(String prodadd) {
		this.prodadd = prodadd;
	}

	public Long getSavemax() {
		return this.savemax;
	}

	public void setSavemax(Long savemax) {
		this.savemax = savemax;
	}

	public Long getSavemin() {
		return this.savemin;
	}

	public void setSavemin(Long savemin) {
		this.savemin = savemin;
	}

	public String getProdbussion() {
		return this.prodbussion;
	}

	public void setProdbussion(String prodbussion) {
		this.prodbussion = prodbussion;
	}

	public String getYbtype() {
		return this.ybtype;
	}

	public void setYbtype(String ybtype) {
		this.ybtype = ybtype;
	}

	public String getYbcode() {
		return this.ybcode;
	}

	public void setYbcode(String ybcode) {
		this.ybcode = ybcode;
	}

	public String getYbname() {
		return this.ybname;
	}

	public void setYbname(String ybname) {
		this.ybname = ybname;
	}

	public String getNbtype() {
		return this.nbtype;
	}

	public void setNbtype(String nbtype) {
		this.nbtype = nbtype;
	}

	public String getNbcode() {
		return this.nbcode;
	}

	public void setNbcode(String nbcode) {
		this.nbcode = nbcode;
	}

	public String getNbname() {
		return this.nbname;
	}

	public void setNbname(String nbname) {
		this.nbname = nbname;
	}

	public String getPayself() {
		return this.payself;
	}

	public void setPayself(String payself) {
		this.payself = payself;
	}

	public String getMincost() {
		return this.mincost;
	}

	public void setMincost(String mincost) {
		this.mincost = mincost;
	}

	public String getSalecost() {
		return this.salecost;
	}

	public void setSalecost(String salecost) {
		this.salecost = salecost;
	}

	public String getMaxcost() {
		return this.maxcost;
	}

	public void setMaxcost(String maxcost) {
		this.maxcost = maxcost;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getRefcode() {
		return this.refcode;
	}

	public void setRefcode(String refcode) {
		this.refcode = refcode;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

}