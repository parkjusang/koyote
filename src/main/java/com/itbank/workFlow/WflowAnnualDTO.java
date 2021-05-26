package com.itbank.workFlow;
//이름            널?       유형           
//------------- -------- ------------ 
//SEQ           NOT NULL NUMBER       
//EMP_NUM       NOT NULL NUMBER       
//PERIOD                 VARCHAR2(50) 
//EXPECTED_DATE          VARCHAR2(50) 
//EMP_NAME               VARCHAR2(50) 
//EMP_DEPT               VARCHAR2(15) 
//SENDER        NOT NULL VARCHAR2(15) 
//RECIPIENT     NOT NULL VARCHAR2(15) 
//APPROVAL      NOT NULL VARCHAR2(20) 
//REQ_DATE      NOT NULL VARCHAR2(20) 

public class WflowAnnualDTO {
	
	private String expected_date,sender,recipient,approval,req_date,emp_name,emp_dept,period;
	private int seq ,sender_num,recipient_num;
	
	
	public String getExpected_date() {
		return expected_date;
	}
	public void setExpected_date(String expected_date) {
		this.expected_date = expected_date;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public String getRecipient() {
		return recipient;
	}
	public void setRecipient(String recipient) {
		this.recipient = recipient;
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
	public String getPeriod() {
		return period;
	}
	public void setPeriod(String period) {
		this.period = period;
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
	
	
	
}
