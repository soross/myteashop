package com.crm.sysdo.po;

/**
 * TGoodsType entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TGoodsType implements java.io.Serializable {

	// Fields

	private Long id;
	private String typename;
	private Long pid;

	// Constructors

	/** default constructor */
	public TGoodsType() {
	}

	/** full constructor */
	public TGoodsType(String typename, Long pid) {
		this.typename = typename;
		this.pid = pid;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTypename() {
		return this.typename;
	}

	public void setTypename(String typename) {
		this.typename = typename;
	}

	public Long getPid() {
		return this.pid;
	}

	public void setPid(Long pid) {
		this.pid = pid;
	}

}