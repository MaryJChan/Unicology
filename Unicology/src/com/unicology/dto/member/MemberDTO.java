package com.unicology.dto.member;

import java.sql.Date;

public class MemberDTO {
	private String mid;
	private String mpw;
	private String mname;
	private String mphone;
	private String memail;
	private String mpost;
	private String maddr;
	private String maddr_detail;
	private String msex;
	private String mbirth;
	private String mduty;
	private String mgrade;
	private String mschool;
	private String matten_eyem;
	private String matten_gygm;
	private String mmajor;
	private String mimage;
	
	
	

	public MemberDTO(String mid, String mpw, String mname, String mphone, String memail, String mpost, String maddr,
			String maddr_detail, String msex, String mbirth, String mduty, String mgrade, String mschool,
			String matten_eyem, String matten_gygm, String mmajor) {
		super();
		this.mid = mid;
		this.mpw = mpw;
		this.mname = mname;
		this.mphone = mphone;
		this.memail = memail;
		this.mpost = mpost;
		this.maddr = maddr;
		this.maddr_detail = maddr_detail;
		this.msex = msex;
		this.mbirth = mbirth;
		this.mduty = mduty;
		this.mgrade = mgrade;
		this.mschool = mschool;
		this.matten_eyem = matten_eyem;
		this.matten_gygm = matten_gygm;
		this.mmajor = mmajor;
	}
	
	
	public MemberDTO(String mid, String mpw, String mname, String mphone, String memail, String mpost, String maddr,
			String maddr_detail, String msex, String mbirth, String mduty, String mgrade, String mschool,
			String matten_eyem, String matten_gygm, String mmajor, String mimage) {
		super();
		this.mid = mid;
		this.mpw = mpw;
		this.mname = mname;
		this.mphone = mphone;
		this.memail = memail;
		this.mpost = mpost;
		this.maddr = maddr;
		this.maddr_detail = maddr_detail;
		this.msex = msex;
		this.mbirth = mbirth;
		this.mduty = mduty;
		this.mgrade = mgrade;
		this.mschool = mschool;
		this.matten_eyem = matten_eyem;
		this.matten_gygm = matten_gygm;
		this.mmajor = mmajor;
		this.mimage = mimage;
	}
	

	public MemberDTO(String mid, String mname, String mphone, String memail, String mpost, String maddr,
			String maddr_detail, String msex, String mbirth) {
		super();
		this.mid = mid;
		this.mname = mname;
		this.mphone = mphone;
		this.memail = memail;
		this.mpost = mpost;
		this.maddr = maddr;
		this.maddr_detail = maddr_detail;
		this.msex = msex;
		this.mbirth = mbirth;
	}

	public MemberDTO(String mid, String mpw, String mname) {
		super();
		this.mid = mid;
		this.mpw = mpw;
		this.mname = mname;
	}


	public String getMaddr_detail() {
		return maddr_detail;
	}

	public void setMaddr_detail(String maddr_detail) {
		this.maddr_detail = maddr_detail;
	}

	public String getMimage() {
		return mimage;
	}

	public void setMimage(String mimage) {
		this.mimage = mimage;
	}

	public String getMmajor() {
		return mmajor;
	}

	public void setMmajor(String mmajor) {
		this.mmajor = mmajor;
	}
	private String useyn;
	
	
	public String getUseyn() {
		return useyn;
	}

	public void setUseyn(String useyn) {
		this.useyn = useyn;
	}
	private Date regdate;
	
	
	
	public MemberDTO() {
		super();
	}
	
	public MemberDTO(String mid, String mpw) {
		super();
		this.mid = mid;
		this.mpw = mpw;
	}

	

	public String getMschool() {
		return mschool;
	}

	public void setMschool(String mschool) {
		this.mschool = mschool;
	}

	public String getMpost() {
		return mpost;
	}

	public void setMpost(String mpost) {
		this.mpost = mpost;
	}

	public String getMaddr() {
		return maddr;
	}

	public void setMaddr(String maddr) {
		this.maddr = maddr;
	}

	public String getMsex() {
		return msex;
	}

	public void setMsex(String msex) {
		this.msex = msex;
	}

	public String getMbirth() {
		return mbirth;
	}

	public void setMbirth(String mbirth) {
		this.mbirth = mbirth;
	}

	public String getMduty() {
		return mduty;
	}

	public void setMduty(String mduty) {
		this.mduty = mduty;
	}

	public String getMgrade() {
		return mgrade;
	}

	public void setMgrade(String mgrade) {
		this.mgrade = mgrade;
	}

	public String getMatten_eyem() {
		return matten_eyem;
	}

	public void setMatten_eyem(String matten_eyem) {
		this.matten_eyem = matten_eyem;
	}

	public String getMatten_gygm() {
		return matten_gygm;
	}

	public void setMatten_gygm(String matten_gygm) {
		this.matten_gygm = matten_gygm;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
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
