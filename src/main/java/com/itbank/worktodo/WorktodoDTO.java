package com.itbank.worktodo;

import java.io.Serializable;

public class WorktodoDTO {
	
	// 할 일 리스트를 위한 DTO
	
	private String sender, recipient, req_date, req_field, req_content, emp_profile, table_name;
	private int sender_num, recipient_num;
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
	public String getReq_date() {
		return req_date;
	}
	public void setReq_date(String req_date) {
		this.req_date = req_date;
	}
	public String getReq_field() {
		return req_field;
	}
	public void setReq_field(String req_field) {
		this.req_field = req_field;
	}
	public String getReq_content() {
		return req_content;
	}
	public void setReq_content(String req_content) {
		this.req_content = req_content;
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
	public String getEmp_profile() {
		return emp_profile;
	}
	public void setEmp_profile(String emp_profile) {
		this.emp_profile = emp_profile;
	}
	public String getTable_name() {
		return table_name;
	}
	public void setTable_name(String table_name) {
		this.table_name = table_name;
	}
	
	
	
}
