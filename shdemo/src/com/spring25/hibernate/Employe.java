package com.spring25.hibernate;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@SuppressWarnings("serial")
@Entity
@Table(name="EMPLOYE")
public class Employe implements Serializable{

	private Integer id;
	private String num;
	private String name;
	private int sex;
	private java.sql.Date brithday;
	private String homeTown;
	private String power;
	
	public Employe(){
		
	}
	
	@Id
	@GeneratedValue
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name="NUM")

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}
	
	@Column(name="NAME")
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Column(name="SEX")
	
	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}
	
	@Column(name="BRITHDAY")
	
	public java.sql.Date getBrithday() {
		return brithday;
	}

	public void setBrithday(java.sql.Date brithday) {
		this.brithday = brithday;
	}
	
	@Column(name="HOMETOWN")
	
	public String getHomeTown() {
		return homeTown;
	}

	public void setHomeTown(String homeTown) {
		this.homeTown = homeTown;
	}

	public String getPower() {
		return power;
	}

	@Column(name="POWER")
		
	public void setPower(String power) {
		this.power = power;
	}
	
}