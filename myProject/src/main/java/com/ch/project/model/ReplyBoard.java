package com.ch.project.model;

import java.sql.Date;

public class ReplyBoard {
	private int rno;
	private int rbno;
	private String replytext;
	private String replyer; // login한 아이디 권장
	private Date regdate;
	private int total;
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	 
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public int getRbno() {
		return rbno;
	}
	public void setRbno(int rbno) {
		this.rbno = rbno;
	}
	public String getReplytext() {
		return replytext;
	}
	public void setReplytext(String replytext) {
		this.replytext = replytext;
	}
	public String getReplyer() {
		return replyer;
	}
	public void setReplyer(String replyer) {
		this.replyer = replyer;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	
}
