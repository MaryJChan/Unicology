package com.unicology.dto.mypage;

public class ScrapDTO {
	
	private String mid;
	private int scrap_eno;
	
	public ScrapDTO() {
		
	}

	public ScrapDTO(String mid, int scrap_eno) {
		super();
		this.mid = mid;
		this.scrap_eno = scrap_eno;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public int getScrap_eno() {
		return scrap_eno;
	}

	public void setScrap_eno(int scrap_eno) {
		this.scrap_eno = scrap_eno;
	}

}
