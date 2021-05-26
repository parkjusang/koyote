package com.itbank.notice;

import java.io.Serializable;
import java.util.Date;

//public class NoticeDTO implements Serializable{
public class NoticeDTO {

//	Table : Notice_table
//	----------- -------- ------------- 
//	SEQ         NOT NULL NUMBER        
//	EMP_NUM     NOT NULL NUMBER        
//	CONTENTS    NOT NULL VARCHAR2(600) 
//	CREATEDATE  NOT NULL DATE          
//	DEL         NOT NULL NUMBER        
//	EMP_PROFILE NOT NULL VARCHAR2(100) 
//	EMP_NAME    NOT NULL VARCHAR2(20)  
	
	private int seq, emp_num, del;
	private String emp_name, emp_profile, contents;
	private Date createDate;
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public int getEmp_num() {
		return emp_num;
	}
	public void setEmp_num(int emp_num) {
		this.emp_num = emp_num;
	}
	public int getDel() {
		return del;
	}
	public void setDel(int del) {
		this.del = del;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getEmp_profile() {
		return emp_profile;
	}
	public void setEmp_profile(String emp_profile) {
		this.emp_profile = emp_profile;
	}
	public String getEmp_name() {
		return emp_name;
	}
	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}
	
	
	
}
