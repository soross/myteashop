package com.crm.client.po;

/**
 * TRuleexp generated by MyEclipse Persistence Tools
 */

public class TRuleexp implements java.io.Serializable {

	// Fields

	private Long id;

	private Long ruleid;

	private String type;

	private Long startvalue;

	private Long endvalue;

	private String expression;

	private TClientrule clientrule;

	// Constructors

	/** default constructor */
	public TRuleexp() {
	}

	/** full constructor */
	public TRuleexp(Long ruleid, String type, Long startvalue, Long endvalue,
			String expression) {
		this.ruleid = ruleid;
		this.type = type;
		this.startvalue = startvalue;
		this.endvalue = endvalue;
		this.expression = expression;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getRuleid() {
		return this.ruleid;
	}

	public void setRuleid(Long ruleid) {
		this.ruleid = ruleid;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Long getStartvalue() {
		return this.startvalue;
	}

	public void setStartvalue(Long startvalue) {
		this.startvalue = startvalue;
	}

	public Long getEndvalue() {
		return this.endvalue;
	}

	public void setEndvalue(Long endvalue) {
		this.endvalue = endvalue;
	}

	public String getExpression() {
		return this.expression;
	}

	public void setExpression(String expression) {
		this.expression = expression;
	}

	public TClientrule getClientrule() {
		return clientrule;
	}

	public void setClientrule(TClientrule clientrule) {
		this.clientrule = clientrule;
	}

}