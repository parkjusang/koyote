package com.itbank.workFlow;

//이름            널?       유형           
//------------- -------- ------------ 
//SEQ           NOT NULL NUMBER       
//SENDER_NUM             NUMBER       
//RECIPIENT_NUM          NUMBER       
//REQ_DATE      NOT NULL VARCHAR2(30) 
//KINDS                  VARCHAR2(20) 
//APPROVAL      NOT NULL VARCHAR2(10) 
//DELETED       NOT NULL NUMBER    
public class storegeDTO {

	private int seq ,sender_num,recipient_num,deleted,write_check;
	private String kinds,approval,req_date,weekend,emp_name, equip_name , equip_info,
				equip_amount,equip_cost, equip_sumcost,equip_why,expected_date,period
				,emp_profile,emp_dept,command,req_content,req_field;
	
	
	public int getWrite_check() {
		return write_check;
	}
	public void setWrite_check(int write_check) {
		this.write_check = write_check;
	}
	public String getReq_content() {
		return req_content;
	}
	public void setReq_content(String req_content) {
		this.req_content = req_content;
	}
	public String getReq_field() {
		return req_field;
	}
	public void setReq_field(String req_field) {
		this.req_field = req_field;
	}
	
	
	public String getCommand() {
		return command;
	}
	public void setCommand(String command) {
		this.command = command;
	}
	public String getEmp_profile() {
		return emp_profile;
	}
	public void setEmp_profile(String emp_profile) {
		this.emp_profile = emp_profile;
	}
	public String getEmp_dept() {
		return emp_dept;
	}
	public void setEmp_dept(String emp_dept) {
		this.emp_dept = emp_dept;
	}
	public String getPeriod() {
		return period;
	}
	public void setPeriod(String period) {
		this.period = period;
	}
	public String getEquip_name() {
		return equip_name;
	}
	public void setEquip_name(String equip_name) {
		this.equip_name = equip_name;
	}
	public String getEquip_info() {
		return equip_info;
	}
	public void setEquip_info(String equip_info) {
		this.equip_info = equip_info;
	}
	public String getEquip_amount() {
		return equip_amount;
	}
	public void setEquip_amount(String equip_amount) {
		this.equip_amount = equip_amount;
	}
	public String getEquip_cost() {
		return equip_cost;
	}
	public void setEquip_cost(String equip_cost) {
		this.equip_cost = equip_cost;
	}
	public String getEquip_sumcost() {
		return equip_sumcost;
	}
	public void setEquip_sumcost(String equip_sumcost) {
		this.equip_sumcost = equip_sumcost;
	}
	public String getEquip_why() {
		return equip_why;
	}
	public void setEquip_why(String equip_why) {
		this.equip_why = equip_why;
	}
	public String getExpected_date() {
		return expected_date;
	}
	public void setExpected_date(String expected_date) {
		this.expected_date = expected_date;
	}
	public String getEmp_name() {
		return emp_name;
	}
	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}
	public String getWeekend() {
		return weekend;
	}
	public void setWeekend(String weekend) {
		this.weekend = weekend;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public int getSender_num() {
		return sender_num;
	}
	public void setSender_num(int sender_num) {
		this.sender_num = sender_num;
	}
	public int getRecipient_num() {
		return recipient_num;
	}
	public void setRecipient_num(int recipient_num) {
		this.recipient_num = recipient_num;
	}
	public int getDeleted() {
		return deleted;
	}
	public void setDeleted(int deleted) {
		this.deleted = deleted;
	}
	public String getKinds() {
		return kinds;
	}
	public void setKinds(String kinds) {
		this.kinds = kinds;
	}
	public String getApproval() {
		return approval;
	}
	public void setApproval(String approval) {
		this.approval = approval;
	}
	public String getReq_date() {
		return req_date;
	}
	public void setReq_date(String req_date) {
		this.req_date = req_date;
	}
	

}
