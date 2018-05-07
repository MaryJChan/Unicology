package com.unicology.dto.passjaso;

public class PassJasoDTO {
	private int pno;
	private String company;
	private String title;
	private String href;
	private String supportingField;
	
	public PassJasoDTO() {}
	
	public PassJasoDTO(String title, String href, String supportingField) {
		super();
		this.title = title;
		this.href = href;
		this.supportingField = supportingField;
	}

	public PassJasoDTO(String company, String title, String href, String supportingField) {
		super();
		this.company = company;
		this.title = title;
		this.href = href;
		this.supportingField = supportingField;
	}

	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getHref() {
		return href;
	}
	public void setHref(String href) {
		this.href = href;
	}
	public String getSupportingField() {
		return supportingField;
	}
	public void setSupportingField(String supportingField) {
		this.supportingField = supportingField;
	}
	
	
}
