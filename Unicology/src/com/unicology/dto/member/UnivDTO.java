package com.unicology.dto.member;

public class UnivDTO {
	private String schoolName; 
	private String schoolGubun; 
	private String schoolType; 
	private String region;
	
	
	
	
	public UnivDTO() {
		super();
	}
	
	public UnivDTO(String schoolName, String schoolGubun, String schoolType, String region) {
		super();
		this.schoolName = schoolName;
		this.schoolGubun = schoolGubun;
		this.schoolType = schoolType;
		this.region = region;
	}

	public String getSchoolName() {
		return schoolName;
	}
	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}
	public String getSchoolGubun() {
		return schoolGubun;
	}
	public void setSchoolGubun(String schoolGubun) {
		this.schoolGubun = schoolGubun;
	}
	public String getSchoolType() {
		return schoolType;
	}
	public void setSchoolType(String schoolType) {
		this.schoolType = schoolType;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	} 
     
     
}
