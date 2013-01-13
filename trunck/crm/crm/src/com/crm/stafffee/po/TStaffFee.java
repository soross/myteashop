package com.crm.stafffee.po;

import java.util.Date;


/**
 * TStaffFee entity. @author MyEclipse Persistence Tools
 */

public class TStaffFee  implements java.io.Serializable {


    // Fields    

     private Long id;
     private String staffid;
     private String staffname;
     private String fee;
     private String state;
     private Date createDate;
     private String createStaff;
     private String feeDesc;


    // Constructors

    /** default constructor */
    public TStaffFee() {
    }

    
    /** full constructor */
    public TStaffFee(String staffid, String fee, String state, Date createDate, String createStaff, String feeDesc) {
        this.staffid = staffid;
        this.fee = fee;
        this.state = state;
        this.createDate = createDate;
        this.createStaff = createStaff;
        this.feeDesc = feeDesc;
    }

   
    // Property accessors

    public Long getId() {
        return this.id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }

    public String getStaffid() {
        return this.staffid;
    }
    
    public void setStaffid(String staffid) {
        this.staffid = staffid;
    }

    public String getFee() {
        return this.fee;
    }
    
    public void setFee(String fee) {
        this.fee = fee;
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

    public String getCreateStaff() {
        return this.createStaff;
    }
    
    public void setCreateStaff(String createStaff) {
        this.createStaff = createStaff;
    }

    public String getFeeDesc() {
        return this.feeDesc;
    }
    
    public void setFeeDesc(String feeDesc) {
        this.feeDesc = feeDesc;
    }


	public String getStaffname() {
		return staffname;
	}


	public void setStaffname(String staffname) {
		this.staffname = staffname;
	}
   








}