package com.ch.project.model;

import java.sql.Date;

public class Member {
	private int mno; //회원번호
	private String id; //아이디
	private String pw; //패스워드
	private String name; //이름
	private String gender; //성별
	private String birthday; //생년월일
	private String tel; //전화번호
	private String email; //이메일
	private String addr; //주소
	private Date reg_date; //가입일
	private String del; //탈퇴여부
	private int code; //회원코드 - 1111
	
	public int getNo() {	return mno;	}
	public void setNo(int no) {	this.mno = no;	}
	
	public String getId() {	return id;	}
	public void setId(String id) {	this.id = id;	}
	
	public String getPw() {	return pw;	}
	public void setPw(String pw) {	this.pw = pw;	}
	
	public String getName() {	return name;	}
	public void setName(String name) {	this.name = name;	}
	
	public String getGender() {	return gender;	}
	public void setGender(String gender) {	this.gender = gender;	}
	
	public String getBirthday() {	return birthday;	}
	public void setBirthday(String birthday) {	this.birthday = birthday;	}
	
	public String getTel() {	return tel;	}
	public void setTel(String tel) {	this.tel = tel;	}
	
	public String getEmail() {	return email;	}
	public void setEmail(String email) {	this.email = email;	}
	
	public String getAddr() {	return addr;	}
	public void setAddr(String addr) {	this.addr = addr;	}
	
	public Date getReg_date() {	return reg_date;	}
	public void setReg_date(Date reg_date) {	this.reg_date = reg_date;	}
	
	public String getDel() {	return del;	}
	public void setDel(String del) {	this.del = del;	}
	
	public int getCode() {	return code;	}
	public void setCode(int code) {	this.code = code;	}
}
