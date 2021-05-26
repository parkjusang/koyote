package com.itbank.working;

import java.util.Date;

public class WorkingDTO {
//	Table: working_info
//	------------- -------- ------------ 
//	SEQ           NOT NULL NUMBER       
//	EMP_NUM       NOT NULL NUMBER       
//	TODAY_DATE    NOT NULL DATE         
//	WORKING_TIME  NOT NULL VARCHAR2(30) 
//	OFF_WORK      NOT NULL VARCHAR2(30) 
//	TOTAL_WORKING NOT NULL VARCHAR2(30) 
//	EXCESS_ALLOW  NOT NULL VARCHAR2(20)
	
	private int seq, emp_num;
	private String working_time, off_work, total_working, excess_allow;
	private Date today_date;
	
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
	public String getWorking_time() {
		return working_time;
	}
	public void setWorking_time(String working_time) {
		this.working_time = working_time;
	}
	public String getOff_work() {
		return off_work;
	}
	public void setOff_work(String off_work) {
		this.off_work = off_work;
	}
	public String getTotal_working() {
		return total_working;
	}
	public void setTotal_working(String total_working) {
		this.total_working = total_working;
	}
	public String getExcess_allow() {
		return excess_allow;
	}
	public void setExcess_allow(String excess_allow) {
		this.excess_allow = excess_allow;
	}
	public Date getToday_date() {
		return today_date;
	}
	public void setToday_date(Date today_date) {
		this.today_date = today_date;
	}
	
}
