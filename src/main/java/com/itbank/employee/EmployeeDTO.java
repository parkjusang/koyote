package com.itbank.employee;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import com.itbank.sub.subMethod;

public class EmployeeDTO {
	
//	Table: employee_table
//	--------------- -------- ------------- 
//	SEQ             NOT NULL NUMBER        
//	EMP_NUM         NOT NULL NUMBER        
//	EMP_NAME        NOT NULL VARCHAR2(20)  
//	EMP_AGE         NOT NULL NUMBER        
//	EMP_GENDER      NOT NULL VARCHAR2(20)  
//	EMP_INTRODUCE            VARCHAR2(100) 
//	EMP_BIRTHNUM    NOT NULL VARCHAR2(40)  
//	EMP_PNUM        NOT NULL VARCHAR2(30)  
//	EMP_ADDR        NOT NULL VARCHAR2(150) 
//	EMP_BANK        NOT NULL VARCHAR2(20)  
//	EMP_BANKNUM     NOT NULL VARCHAR2(40)  
//	EMP_POS         NOT NULL VARCHAR2(20)  
//	START_DAY       NOT NULL DATE          
//	END_DAY                  DATE          
//	EMP_DEPT        NOT NULL VARCHAR2(40)  
//	EMP_SALA        NOT NULL NUMBER        
//	EMP_PROFILE     NOT NULL VARCHAR2(100) 
//	EMP_DEL         NOT NULL NUMBER        
//	EMP_DELINFO              VARCHAR2(100) 
//	EMP_PW          NOT NULL VARCHAR2(300) 
//	EMP_HEAD        NOT NULL NUMBER        
//	EMP_ADMIN       NOT NULL NUMBER        
//	EMP_EMAIL       NOT NULL VARCHAR2(100) 
//	EMP_INFO_CHANGE          VARCHAR2(20)  
//	EMP_PRIORNUM             VARCHAR2(20) 
	
//	Table: department_table
//	--------- -------- ------------ 
//	DEPT_NO   NOT NULL NUMBER       
//	DEPT_NAME          VARCHAR2(20)
	
//	Table: position_table
//	-------- -------- ------------ 
//	POS_NO   NOT NULL NUMBER       
//	POS_NAME          VARCHAR2(20) 
	
	private int seq, emp_num, emp_age, emp_del, emp_head, emp_admin, emp_sala;
	private String emp_name, emp_gender, emp_introduce, emp_birthnum, emp_pnum, emp_addr, emp_bank, emp_banknum, 
					 emp_profile, emp_delinfo, dept_name, pos_name , emp_email , emp_pw ,emp_info_change , emp_priorNum, emp_dept
					,emp_pos;
	private Date start_day, end_day;
	
	
	private MultipartFile file ; 
	
	public void setStart_day(String start_day) {
		this.start_day = subMethod.transformDate(start_day);
	}
	public void setEnd_day(String end_day) {
		this.end_day = subMethod.transformDate(end_day);
	}
	
	public String getEmp_priorNum() {
		return emp_priorNum;
	}
	public void setEmp_priorNum(String emp_priorNum) {
		this.emp_priorNum = emp_priorNum;
	}
	public String getEmp_info_change() {
		return emp_info_change;
	}
	public void setEmp_info_change(String emp_info_change) {
		this.emp_info_change = emp_info_change;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public String getEmp_pw() {
		return emp_pw;
	}
	public void setEmp_pw(String emp_pw) {
		this.emp_pw = emp_pw;
	}
	public String getEmp_email() {
		return emp_email;
	}
	public void setEmp_email(String emp_email) {
		this.emp_email = emp_email;
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
	public int getEmp_del() {
		return emp_del;
	}
	public void setEmp_del(int emp_del) {
		this.emp_del = emp_del;
	}
	public String getEmp_name() {
		return emp_name;
	}
	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
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
	public int getEmp_sala() {
		return emp_sala;
	}
	public void setEmp_sala(int emp_sala) {
		this.emp_sala = emp_sala;
	}
	

}
