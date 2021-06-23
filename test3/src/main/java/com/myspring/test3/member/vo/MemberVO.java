package com.myspring.test3.member.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("memberVO")
public class MemberVO{
	private String memId;
	private String memName;
	private String memPwd;
	private String memEmail;
	private String memPhoneNum;
	private String memAdr;
	private Date memRegdate;
	private int memberDrop;
	
	public MemberVO() {
		
	}
	
	public MemberVO(String memId, String memName, String memPwd, String memEmail, String memPhoneNum, String memAdr, int memberDrop) {
		this.memId = memId;
		this.memName = memName;
		this.memPwd = memPwd;
		this.memEmail = memEmail;
		this.memPhoneNum = memPhoneNum;
		this.memAdr = memAdr;
		this.memberDrop = memberDrop;
	}
	
	public String getmemId() {
		return memId;
	}
	
	public void setmemId(String memId) {
		this.memId = memId;
	}
	
	public String getmemName() {
		return memName;
	}
	
	public void setmemName(String memName) {
		this.memName=memName;
	}
	
	public String getmemPwd() {
		return memPwd;
	}
	
	public void setmemPwd(String memPwd) {
		this.memPwd=memPwd;
	}
	
	public String getmemEmail() {
		return memEmail;
	}
	
	public void setmemEmail(String memEmail) {
		this.memEmail=memEmail;
	}
	
	public String getmemPhoneNum() {
		return memPhoneNum;
	}
	
	public void setmemPhoneNum(String memPhoneNum) {
		this.memPhoneNum = memPhoneNum;
	}
	
	public String getmemAdr() {
		return memAdr;
	}
	
	public void setmemAdr(String memAdr) {
		this.memAdr = memAdr;
	}
	
	public int getmemberDrop() {
		return memberDrop;
	}
	
	public void setmemberDrop(int memberDrop) {
		this.memberDrop = memberDrop;
	}

	public Date getmemRegdate() {
		return memRegdate;
	}
	
	public void setmemRegdate(Date memRegdate) {
		this.memRegdate = memRegdate;
	}
}