package com.unicology.dto.empinfo;

public class EmpInfoDTO {
	private int eno;
	private String companyName = null;
	private String title = null;
	private String href = null;
	private String clasificar = null;
	private String middleClassification = null;
	private String subclass = null;
	private String career = null;
	private String education = null;
	private String employmentType = null;
	private String work_place = null;
	private String deadlines = null;
	private String searchkey;
	
	public EmpInfoDTO() {
		
	}	

	public EmpInfoDTO(String title, String subclass) {
		super();
		this.title = title;
		this.subclass = subclass;
	}
	
	public EmpInfoDTO(String companyName, String title, String href, String clasificar, String subclass, String career,
			String education, String employmentType, String work_place, String deadlines) {
		super();
		this.companyName = companyName;
		this.title = title;
		this.href = href;
		this.clasificar = clasificar;
		this.subclass = subclass;
		this.career = career;
		this.education = education;
		this.employmentType = employmentType;
		this.work_place = work_place;
		this.deadlines = deadlines;
	}

	public EmpInfoDTO(String companyName, String title, String href, String clasificar, String middleClassification, String subclass, String career,
			String education, String employmentType, String work_place, String deadlines) {
		super();
		this.companyName = companyName;
		this.title = title;
		this.href = href;
		this.clasificar = clasificar;
		this.middleClassification = middleClassification;
		this.subclass = subclass;
		this.career = career;
		this.education = education;
		this.employmentType = employmentType;
		this.work_place = work_place;
		this.deadlines = deadlines;
	}

	public int getEno() {
		return eno;
	}

	public void setEno(int eno) {
		this.eno = eno;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
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

	public String getClasificar() {
		return clasificar;
	}

	public void setClasificar(String clasificar) {
		this.clasificar = clasificar;
	}

	public String getMiddleClassification() {
		return middleClassification;
	}

	public void setMiddleClassification(String middleClassification) {
		this.middleClassification = middleClassification;
	}



	public String getSubclass() {
		return subclass;
	}

	public void setSubclass(String subclass) {
		this.subclass = subclass;
	}

	public String getCareer() {
		return career;
	}

	public void setCareer(String career) {
		this.career = career;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getEmploymentType() {
		return employmentType;
	}

	public void setEmploymentType(String employmentType) {
		this.employmentType = employmentType;
	}

	public String getWork_place() {
		return work_place;
	}

	public void setWork_place(String work_place) {
		this.work_place = work_place;
	}

	public String getDeadlines() {
		return deadlines;
	}

	public void setDeadlines(String deadlines) {
		this.deadlines = deadlines;
	}
	
	public String getSearchkey() {
		return searchkey;
	}

	public void setSearchkey(String searchkey) {
		this.searchkey = searchkey;
	}	

}
