package com.itbank.workFlow;

//SEQ         NOT NULL NUMBER   
//SENDER      NOT NULL VARCHAR2(30)   
//RECIPIENT   NOT NULL VARCHAR2(30)   
//REQ_CONTENT NOT NULL VARCHAR2(2000) 
//REQ_FIELD   NOT NULL VARCHAR2(50)   
//REQ_DATE    NOT NULL VARCHAR2(15)   
//WRITE_CHECK NOT NULL NUMBER

// 비품 요청 DTO 
public class ReqeustDTO {
	
	private int seq ,write_check,sender_num,recipient_num;
	private String sender,recipient,req_content,req_field,req_date;
	
	
	
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
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public int getWrite_check() {
		return write_check;
	}
	public void setWrite_check(int write_check) {
		this.write_check = write_check;
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
	public String getReq_date() {
		return req_date;
	}
	public void setReq_date(String req_date) {
		this.req_date = req_date;
	}
	
	

}
