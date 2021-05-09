package com.hotel.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="t_error")
public class Error {
    
	private int id;
	private int type;
	private String desc;
	private String remark;
	private int isFix;
    
	@Id
    @GeneratedValue
    public int getId() {
        return id;
    }
    
    public void setId(int id) {
        this.id = id;
    }

    
    public int getType() {
        return type;
    }

    
    public void setType(int type) {
        this.type = type;
    }

    
    public String getDesc() {
        return desc;
    }

    
    public void setDesc(String desc) {
        this.desc = desc;
    }

    
    public String getRemark() {
        return remark;
    }

    
    public void setRemark(String remark) {
        this.remark = remark;
    }

    
    public int getIsFix() {
        return isFix;
    }

    
    public void setIsFix(int isFix) {
        this.isFix = isFix;
    }
   
	
	
}
