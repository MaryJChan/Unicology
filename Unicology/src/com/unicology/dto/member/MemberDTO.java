package com.unicology.dto.member;

public class MemberDTO {
	private String mid;
	private String mpw;
	private String mname;
	private String mphone;
	private String memail;
	
	
	public MemberDTO() {
		super();
	}
	
	public MemberDTO(String mid, String mpw) {
		super();
		this.mid = mid;
		this.mpw = mpw;
	}

	public MemberDTO(String mid, String mpw, String mname, String mphone, String memail) {
		super();
		this.mid = mid;
		this.mpw = mpw;
		this.mname = mname;
		this.mphone = mphone;
		this.memail = memail;
	}


	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMpw() {
		return mpw;
	}
	public void setMpw(String mpw) {
		this.mpw = mpw;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMphone() {
		return mphone;
	}
	public void setMphone(String mphone) {
		this.mphone = mphone;
	}
	public String getMemail() {
		return memail;
	}
	public void setMemail(String memail) {
		this.memail = memail;
	}
	
}
