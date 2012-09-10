package com.crm.sysdo.po;

import java.util.Date;

/**
 * TGoods entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TGoods implements java.io.Serializable {

	// Fields

	private Long id;
	private String goodsname;
	private String code;
	private String pinyin;
	private String wubi;
	private String goodstype;
	private String spec;
	private String unit;
	private String allunit;
	private String conver;
	private String minsave;
	private String maxsave;
	private String produnit;
	private String remark;
	private String state;
	private Date createDate;

	// Constructors

	/** default constructor */
	public TGoods() {
	}

	/** full constructor */
	public TGoods(String goodsname, String code, String pinyin, String wubi,
			String goodstype, String spec, String unit, String allunit,
			String conver, String minsave, String maxsave, String produnit,
			String remark, String state, Date createDate) {
		this.goodsname = goodsname;
		this.code = code;
		this.pinyin = pinyin;
		this.wubi = wubi;
		this.goodstype = goodstype;
		this.spec = spec;
		this.unit = unit;
		this.allunit = allunit;
		this.conver = conver;
		this.minsave = minsave;
		this.maxsave = maxsave;
		this.produnit = produnit;
		this.remark = remark;
		this.state = state;
		this.createDate = createDate;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getGoodsname() {
		return this.goodsname;
	}

	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}

	public String getCode() {
		return this.code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getPinyin() {
		return this.pinyin;
	}

	public void setPinyin(String pinyin) {
		this.pinyin = pinyin;
	}

	public String getWubi() {
		return this.wubi;
	}

	public void setWubi(String wubi) {
		this.wubi = wubi;
	}

	public String getGoodstype() {
		return this.goodstype;
	}

	public void setGoodstype(String goodstype) {
		this.goodstype = goodstype;
	}

	public String getSpec() {
		return this.spec;
	}

	public void setSpec(String spec) {
		this.spec = spec;
	}

	public String getUnit() {
		return this.unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public String getAllunit() {
		return this.allunit;
	}

	public void setAllunit(String allunit) {
		this.allunit = allunit;
	}

	public String getConver() {
		return this.conver;
	}

	public void setConver(String conver) {
		this.conver = conver;
	}

	public String getMinsave() {
		return this.minsave;
	}

	public void setMinsave(String minsave) {
		this.minsave = minsave;
	}

	public String getMaxsave() {
		return this.maxsave;
	}

	public void setMaxsave(String maxsave) {
		this.maxsave = maxsave;
	}

	public String getProdunit() {
		return this.produnit;
	}

	public void setProdunit(String produnit) {
		this.produnit = produnit;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

}