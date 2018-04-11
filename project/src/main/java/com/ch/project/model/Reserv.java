package com.ch.project.model;

import java.sql.Date;

public class Reserv {
	private int reserv_no;
	private Date rdate;
	private Date rtime;
	private Date applydate;
	private int member_num;
	private String dcode;

	public int getReserv_no() {
		return reserv_no;
	}

	public void setReserv_no(int reserv_no) {
		this.reserv_no = reserv_no;
	}

	public Date getRdate() {
		return rdate;
	}

	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}

	public Date getRtime() {
		return rtime;
	}

	public void setRtime(Date rtime) {
		this.rtime = rtime;
	}

	public Date getApplydate() {
		return applydate;
	}

	public void setApplydate(Date applydate) {
		this.applydate = applydate;
	}

	public int getMember_num() {
		return member_num;
	}

	public void setMember_num(int member_num) {
		this.member_num = member_num;
	}

	public String getDcode() {
		return dcode;
	}

	public void setDcode(String dcode) {
		this.dcode = dcode;
	}

}