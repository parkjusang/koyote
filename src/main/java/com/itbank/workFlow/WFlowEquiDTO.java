package com.itbank.workFlow;

//SEQ           NOT NULL NUMBER       
//EQUIP_NAME    NOT NULL VARCHAR2(50) 
//EQUIP_INFO    NOT NULL VARCHAR2(20) 
//EQUIP_AMOUNT  NOT NULL VARCHAR2(20) 
//EQUIP_COST    NOT NULL VARCHAR2(20) 
//EQUIP_SUMCOST NOT NULL VARCHAR2(20) 
//EQUIP_WHY     NOT NULL VARCHAR2(20) 
//EMP_NUM       NOT NULL NUMBER       
//SENDER        NOT NULL VARCHAR2(15) 
//RECIPIENT     NOT NULL VARCHAR2(15) 
//APPROVAL      NOT NULL VARCHAR2(20) 
//REQ_DATE      NOT NULL VARCHAR2(20) 

// 비품 작성 DTO
public class WFlowEquiDTO {
	
	private int seq , sender_num,recipient_num;
	private String equip_name , equip_info,equip_amount,equip_cost, equip_sumcost,equip_why,sender,recipient,approval,
							req_date;
	
	public String getEquip_sumcost() {
		return equip_sumcost;
	}
	public void setEquip_sumcost(String equip_sumcost) {
		this.equip_sumcost = equip_sumcost;
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
	public String getEquip_why() {
		return equip_why;
	}
	public void setEquip_why(String equip_why) {
		this.equip_why = equip_why;
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
	

}
