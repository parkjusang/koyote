package com.itbank.sub;

import java.util.Date;

public class InsertInfoDTO {

/*	Table Info

	Table: employee_table
	------------- -------- ------------- 
	SEQ           NOT NULL NUMBER        
	EMP_NUM       NOT NULL NUMBER  
	EMP_NAME      NOT NULL VARCHAR2(20)  
	EMP_AGE       NOT NULL NUMBER        
	EMP_GENDER    NOT NULL VARCHAR2(20)  
	EMP_INTRODUCE          VARCHAR2(100) 
	EMP_BIRTHNUM  NOT NULL VARCHAR2(40)  
	EMP_PNUM      NOT NULL VARCHAR2(30)  
	EMP_ADDR      NOT NULL VARCHAR2(50)  
	EMP_BANK      NOT NULL VARCHAR2(20)  
	EMP_BANKNUM   NOT NULL VARCHAR2(40)  
	EMP_POS       NOT NULL VARCHAR2(20)        
	START_DAY     NOT NULL DATE          
	END_DAY                DATE          
	EMP_DEPT      NOT NULL VARCHAR2(20)        
	EMP_SALA      NOT NULL NUMBER   
	EMP_PROFILE   NOT NULL VARCHAR2(100)
	EMP_DEL       NOT NULL NUMBER        
	EMP_DELINFO            VARCHAR2(100) 
	EMP_PW        NOT NULL VARCHAR2(300) 
	EMP_HEAD      NOT NULL NUMBER        
	EMP_ADMIN     NOT NULL NUMBER   
	EMP_EMAIL     NOT NULL VARCHAR2(100) 
	
	Table: department_table
	--------- -------- ------------ 
	DEPT_NO   NOT NULL NUMBER       
	DEPT_NAME          VARCHAR2(20)
	
	Table: position_table
	-------- -------- ------------ 
	POS_NO   NOT NULL NUMBER       
	POS_NAME          VARCHAR2(20)
	
	Table: contract_table
	------------ -------- ------ 
	EMP_NUM      NOT NULL NUMBER 
	CON_INCOME   NOT NULL NUMBER 
	CON_STARTDAY NOT NULL DATE   
	CON_ENDDAY   NOT NULL DATE
*/
	
	private Date start_day, end_day;
	private int seq, emp_num, emp_age, emp_sala, emp_del, emp_head, emp_admin;
	private String emp_name, emp_pw, emp_gender, emp_introduce, emp_birthnum, emp_pnum, emp_addr, emp_bank, emp_banknum, 
					emp_profile, emp_delinfo, emp_email, dept_name, pos_name, emp_pos, emp_dept;
	
	private int con_income;
	private Date con_startday, con_endday;
	
	public void setCon_startday(String con_startday) {
		this.con_startday = subMethod.transformDate(con_startday);
	}
	public void setCon_endday(String con_endday) {
		this.con_endday = subMethod.transformDate(con_endday);
	}
	public void setEnd_day(String end_day) {
		this.end_day = subMethod.transformDate(end_day);
	}
	public void setStart_day(String start_day) {
		this.start_day = subMethod.transformDate(start_day);
	}
	
	public void setCon_income(String con_income) {
		int int_con_income = Integer.parseInt(con_income.replace(",", "")); 
		this.con_income = int_con_income;
	}
	
	public Date getStart_day() {
		
		return start_day;
	}
	public void setStart_day(Date start_day) {
		this.start_day = start_day;
	}
	public Date getEnd_day() {
		return end_day;
	}
	public void setEnd_day(Date end_day) {
		this.end_day = end_day;
	}
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
	public int getEmp_age() {
		return emp_age;
	}
	public void setEmp_age(int emp_age) {
		this.emp_age = emp_age;
	}
	public int getEmp_sala() {
		return emp_sala;
	}
	public void setEmp_sala(int emp_sala) {
		this.emp_sala = emp_sala;
	}
	public int getEmp_del() {
		return emp_del;
	}
	public void setEmp_del(int emp_del) {
		this.emp_del = emp_del;
	}
	public int getEmp_head() {
		return emp_head;
	}
	public void setEmp_head(int emp_head) {
		this.emp_head = emp_head;
	}
	public int getEmp_admin() {
		return emp_admin;
	}
	public void setEmp_admin(int emp_admin) {
		this.emp_admin = emp_admin;
	}
	public String getEmp_name() {
		return emp_name;
	}
	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}
	public String getEmp_pw() {
		return emp_pw;
	}
	public void setEmp_pw(String emp_pw) {
		this.emp_pw = emp_pw;
	}
	public String getEmp_gender() {
		return emp_gender;
	}
	public void setEmp_gender(String emp_gender) {
		this.emp_gender = emp_gender;
	}
	public String getEmp_introduce() {
		return emp_introduce;
	}
	public void setEmp_introduce(String emp_introduce) {
		this.emp_introduce = emp_introduce;
	}
	public String getEmp_birthnum() {
		return emp_birthnum;
	}
	public void setEmp_birthnum(String emp_birthnum) {
		this.emp_birthnum = emp_birthnum;
	}
	public String getEmp_pnum() {
		return emp_pnum;
	}
	public void setEmp_pnum(String emp_pnum) {
		this.emp_pnum = emp_pnum;
	}
	public String getEmp_addr() {
		return emp_addr;
	}
	public void setEmp_addr(String emp_addr) {
		this.emp_addr = emp_addr;
	}
	public String getEmp_bank() {
		return emp_bank;
	}
	public void setEmp_bank(String emp_bank) {
		this.emp_bank = emp_bank;
	}
	public String getEmp_banknum() {
		return emp_banknum;
	}
	public void setEmp_banknum(String emp_banknum) {
		this.emp_banknum = emp_banknum;
	}
	public String getEmp_profile() {
		return emp_profile;
	}
	public void setEmp_profile(String emp_profile) {
		this.emp_profile = emp_profile;
	}
	public String getEmp_delinfo() {
		return emp_delinfo;
	}
	public void setEmp_delinfo(String emp_delinfo) {
		this.emp_delinfo = emp_delinfo;
	}
	public String getEmp_email() {
		return emp_email;
	}
	public void setEmp_email(String emp_email) {
		this.emp_email = emp_email;
	}
	public String getDept_name() {
		return dept_name;
	}
	public void setDept_name(String dept_name) {
		this.dept_name = dept_name;
	}
	public String getPos_name() {
		return pos_name;
	}
	public void setPos_name(String pos_name) {
		this.pos_name = pos_name;
	}
	public int getCon_income() {
		return con_income;
	}
//	public void setCon_income(int con_income) {
//		this.con_income = con_income;
//	}
	public Date getCon_startday() {
		return con_startday;
	}
	public void setCon_startday(Date con_startday) {
		this.con_startday = con_startday;
	}
	public Date getCon_endday() {
		return con_endday;
	}
	public void setCon_endday(Date con_endday) {
		this.con_endday = con_endday;
	}
	public String getEmp_pos() {
		return emp_pos;
	}
	public void setEmp_pos(String emp_pos) {
		this.emp_pos = emp_pos;
	}
	public String getEmp_dept() {
		return emp_dept;
	}
	public void setEmp_dept(String emp_dept) {
		this.emp_dept = emp_dept;
	}


	
}
