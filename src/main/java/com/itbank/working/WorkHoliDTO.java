package com.itbank.working;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class WorkHoliDTO {
	private String emp_name,emp_dept,working_time,off_work;
	private int emp_num;
	
	@JsonFormat(shape = JsonFormat.Shape.STRING,pattern = "MM-dd",timezone = "Asia/Seoul")
	private Date today_date;
	public String getEmp_name() {
		return emp_name;
	}
	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}
	public String getEmp_dept() {
		return emp_dept;
	}
	public void setEmp_dept(String emp_dept) {
		this.emp_dept = emp_dept;
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
	public int getEmp_num() {
		return emp_num;
	}
	public void setEmp_num(int emp_num) {
		this.emp_num = emp_num;
	}
	public Date getToday_date() {
		return today_date;
	}
	public void setToday_date(Date today_date) {
		this.today_date = today_date;
	}
	
	
}
