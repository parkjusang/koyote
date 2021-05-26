package com.itbank.sub;

//이름           널?       유형     
//------------ -------- ------ 
//SEQ          NOT NULL NUMBER 
//EMP_NUM      NOT NULL NUMBER 
//TODAY_DATE   NOT NULL DATE   
//MARRY_ME     NOT NULL NUMBER 
//MARRY_CHILD  NOT NULL NUMBER 
//CHILD_BIRTH  NOT NULL NUMBER 
//AFTER_BABY   NOT NULL NUMBER 
//ANNUAL_LEAVE NOT NULL NUMBER 
//CONDOLENCES  NOT NULL NUMBER // 조의
//SICK_LEAVE   NOT NULL NUMBER 


public class VacationDTO {
	
	private int seq , emp_num,marry_me,marry_child,
					child_birth,after_baby,annual_leave,
					condolences,sick_leave;
	private String today_date ;
	
	
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
	public int getMarry_me() {
		return marry_me;
	}
	public void setMarry_me(int marry_me) {
		this.marry_me = marry_me;
	}
	public int getMarry_child() {
		return marry_child;
	}
	public void setMarry_child(int marry_child) {
		this.marry_child = marry_child;
	}
	public int getChild_birth() {
		return child_birth;
	}
	public void setChild_birth(int child_birth) {
		this.child_birth = child_birth;
	}
	public int getAfter_baby() {
		return after_baby;
	}
	public void setAfter_baby(int after_baby) {
		this.after_baby = after_baby;
	}
	public int getAnnual_leave() {
		return annual_leave;
	}
	public void setAnnual_leave(int annual_leave) {
		this.annual_leave = annual_leave;
	}
	public int getCondolences() {
		return condolences;
	}
	public void setCondolences(int condolences) {
		this.condolences = condolences;
	}
	public int getSick_leave() {
		return sick_leave;
	}
	public void setSick_leave(int sick_leave) {
		this.sick_leave = sick_leave;
	}
	public String getToday_date() {
		return today_date;
	}
	public void setToday_date(String today_date) {
		this.today_date = today_date;
	} 
	
	
	
	

}
