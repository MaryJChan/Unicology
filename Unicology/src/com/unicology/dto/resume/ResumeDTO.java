package com.unicology.dto.resume;

import java.util.Date;

public class ResumeDTO {

	private String resume_no;
	private String resume_title;
	private String UserId;
	private String UserName;
	private String UserBirth;
	private String UserSex;
	private String UserEmail;
	private String UserTel;
	private String UserPhone;
	private String UserAdress;
	private String SchoolGrade;
	private String SchoolName;
	private String entranceYear;
	private String graduationYear;
	private String GraduationStatus;
	private String major;
	private String majorGrade;
	private String MajorTotalgrade;
	private String company;
	private String division;
	private String joincom;
	private String resigncom;
	private String position;
	private String duty;
	private String sal;
	private String businesswork;
	private String InternActivity;
	private String interncompany;
	private String startintern;
	private String endintern;
	private String interncontent;
	private String learningname;
	private String learningorgan;
	private String startlearning;
	private String endlearning;
	private String learningcontent;
	private String licensename;
	private String licensepublish;
	private String startlicense;
	private String award_title;
	private String award_inst;
	private String award_year;
	private String award_content;
	private String country_name;
	private String country_start;
	private String country_end;
	private String abroad_content;
	private String kind;
	private String language_kind;
	private String language_level;
	private String url_addr;
	private String filename;
	private int filesize;
	private String bohun;
	private String job_protection;
	private String subsidy;
	private String obstacle;
	private String MilitaryService;
	private Date regdate;
	
	public ResumeDTO() {
		
	}

	public ResumeDTO(String resume_no, String userId) {
		super();
		this.resume_no = resume_no;
		UserId = userId;
	}

	public ResumeDTO(String resume_title, String userId, String userName, String userBirth, String userSex,
			String userEmail, String userTel, String userPhone, String userAdress, String schoolGrade,
			String schoolName, String entranceYear, String graduationYear, String graduationStatus, String major,
			String majorGrade, String majorTotalgrade, String company, String division, String joincom,
			String resigncom, String position, String duty, String sal, String businesswork, String internActivity,
			String interncompany, String startintern, String endintern, String interncontent, String learningname,
			String learningorgan, String startlearning, String endlearning, String learningcontent, String licensename,
			String licensepublish, String startlicense, String award_title, String award_inst, String award_year,
			String award_content, String country_name, String country_start, String country_end, String abroad_content,
			String kind, String language_kind, String language_level, String url_addr, String filename, int filesize,
			String bohun, String job_protection, String subsidy, String obstacle, String militaryService,
			Date regdate) {
		super();
		this.resume_title = resume_title;
		UserId = userId;
		UserName = userName;
		UserBirth = userBirth;
		UserSex = userSex;
		UserEmail = userEmail;
		UserTel = userTel;
		UserPhone = userPhone;
		UserAdress = userAdress;
		SchoolGrade = schoolGrade;
		SchoolName = schoolName;
		this.entranceYear = entranceYear;
		this.graduationYear = graduationYear;
		GraduationStatus = graduationStatus;
		this.major = major;
		this.majorGrade = majorGrade;
		MajorTotalgrade = majorTotalgrade;
		this.company = company;
		this.division = division;
		this.joincom = joincom;
		this.resigncom = resigncom;
		this.position = position;
		this.duty = duty;
		this.sal = sal;
		this.businesswork = businesswork;
		InternActivity = internActivity;
		this.interncompany = interncompany;
		this.startintern = startintern;
		this.endintern = endintern;
		this.interncontent = interncontent;
		this.learningname = learningname;
		this.learningorgan = learningorgan;
		this.startlearning = startlearning;
		this.endlearning = endlearning;
		this.learningcontent = learningcontent;
		this.licensename = licensename;
		this.licensepublish = licensepublish;
		this.startlicense = startlicense;
		this.award_title = award_title;
		this.award_inst = award_inst;
		this.award_year = award_year;
		this.award_content = award_content;
		this.country_name = country_name;
		this.country_start = country_start;
		this.country_end = country_end;
		this.abroad_content = abroad_content;
		this.kind = kind;
		this.language_kind = language_kind;
		this.language_level = language_level;
		this.url_addr = url_addr;
		this.filename = filename;
		this.filesize = filesize;
		this.bohun = bohun;
		this.job_protection = job_protection;
		this.subsidy = subsidy;
		this.obstacle = obstacle;
		MilitaryService = militaryService;
		this.regdate = regdate;
	}

	public ResumeDTO(String resume_title, String userId, String userName, String userBirth, String userSex,
			String userEmail, String userTel, String userPhone, String userAdress, String schoolGrade,
			String schoolName, String entranceYear, String graduationYear, String graduationStatus, String major,
			String majorGrade, String majorTotalgrade, String company, String division, String joincom,
			String resigncom, String position, String duty, String sal, String businesswork, String internActivity,
			String interncompany, String startintern, String endintern, String interncontent, String learningname,
			String learningorgan, String startlearning, String endlearning, String learningcontent, String licensename,
			String licensepublish, String startlicense, String award_title, String award_inst, String award_year,
			String award_content, String country_name, String country_start, String country_end, String abroad_content,
			String kind, String language_kind, String language_level, String url_addr, String filename, int filesize,
			String bohun, String job_protection, String subsidy, String obstacle, String militaryService) {
		super();
		this.resume_title = resume_title;
		UserId = userId;
		UserName = userName;
		UserBirth = userBirth;
		UserSex = userSex;
		UserEmail = userEmail;
		UserTel = userTel;
		UserPhone = userPhone;
		UserAdress = userAdress;
		SchoolGrade = schoolGrade;
		SchoolName = schoolName;
		this.entranceYear = entranceYear;
		this.graduationYear = graduationYear;
		GraduationStatus = graduationStatus;
		this.major = major;
		this.majorGrade = majorGrade;
		MajorTotalgrade = majorTotalgrade;
		this.company = company;
		this.division = division;
		this.joincom = joincom;
		this.resigncom = resigncom;
		this.position = position;
		this.duty = duty;
		this.sal = sal;
		this.businesswork = businesswork;
		InternActivity = internActivity;
		this.interncompany = interncompany;
		this.startintern = startintern;
		this.endintern = endintern;
		this.interncontent = interncontent;
		this.learningname = learningname;
		this.learningorgan = learningorgan;
		this.startlearning = startlearning;
		this.endlearning = endlearning;
		this.learningcontent = learningcontent;
		this.licensename = licensename;
		this.licensepublish = licensepublish;
		this.startlicense = startlicense;
		this.award_title = award_title;
		this.award_inst = award_inst;
		this.award_year = award_year;
		this.award_content = award_content;
		this.country_name = country_name;
		this.country_start = country_start;
		this.country_end = country_end;
		this.abroad_content = abroad_content;
		this.kind = kind;
		this.language_kind = language_kind;
		this.language_level = language_level;
		this.url_addr = url_addr;
		this.filename = filename;
		this.filesize = filesize;
		this.bohun = bohun;
		this.job_protection = job_protection;
		this.subsidy = subsidy;
		this.obstacle = obstacle;
		MilitaryService = militaryService;
	}

	public String getResume_title() {
		return resume_title;
	}

	public void setResume_title(String resume_title) {
		this.resume_title = resume_title;
	}

	public String getUserId() {
		return UserId;
	}

	public void setUserId(String userId) {
		UserId = userId;
	}

	public String getUserName() {
		return UserName;
	}

	public void setUserName(String userName) {
		UserName = userName;
	}

	public String getUserBirth() {
		return UserBirth;
	}

	public void setUserBirth(String userBirth) {
		UserBirth = userBirth;
	}

	public String getUserSex() {
		return UserSex;
	}

	public void setUserSex(String userSex) {
		UserSex = userSex;
	}

	public String getUserEmail() {
		return UserEmail;
	}

	public void setUserEmail(String userEmail) {
		UserEmail = userEmail;
	}

	public String getUserTel() {
		return UserTel;
	}

	public void setUserTel(String userTel) {
		UserTel = userTel;
	}

	public String getUserPhone() {
		return UserPhone;
	}

	public void setUserPhone(String userPhone) {
		UserPhone = userPhone;
	}

	public String getUserAdress() {
		return UserAdress;
	}

	public void setUserAdress(String userAdress) {
		UserAdress = userAdress;
	}

	public String getSchoolGrade() {
		return SchoolGrade;
	}

	public void setSchoolGrade(String schoolGrade) {
		SchoolGrade = schoolGrade;
	}

	public String getSchoolName() {
		return SchoolName;
	}

	public void setSchoolName(String schoolName) {
		SchoolName = schoolName;
	}

	public String getEntranceYear() {
		return entranceYear;
	}

	public void setEntranceYear(String entranceYear) {
		this.entranceYear = entranceYear;
	}

	public String getGraduationYear() {
		return graduationYear;
	}

	public void setGraduationYear(String graduationYear) {
		this.graduationYear = graduationYear;
	}

	public String getGraduationStatus() {
		return GraduationStatus;
	}

	public void setGraduationStatus(String graduationStatus) {
		GraduationStatus = graduationStatus;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getMajorGrade() {
		return majorGrade;
	}

	public void setMajorGrade(String majorGrade) {
		this.majorGrade = majorGrade;
	}

	public String getMajorTotalgrade() {
		return MajorTotalgrade;
	}

	public void setMajorTotalgrade(String majorTotalgrade) {
		MajorTotalgrade = majorTotalgrade;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getDivision() {
		return division;
	}

	public void setDivision(String division) {
		this.division = division;
	}

	public String getJoincom() {
		return joincom;
	}

	public void setJoincom(String joincom) {
		this.joincom = joincom;
	}

	public String getResigncom() {
		return resigncom;
	}

	public void setResigncom(String resigncom) {
		this.resigncom = resigncom;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getDuty() {
		return duty;
	}

	public void setDuty(String duty) {
		this.duty = duty;
	}

	public String getSal() {
		return sal;
	}

	public void setSal(String sal) {
		this.sal = sal;
	}

	public String getBusinesswork() {
		return businesswork;
	}

	public void setBusinesswork(String businesswork) {
		this.businesswork = businesswork;
	}

	public String getInternActivity() {
		return InternActivity;
	}

	public void setInternActivity(String internActivity) {
		InternActivity = internActivity;
	}

	public String getInterncompany() {
		return interncompany;
	}

	public void setInterncompany(String interncompany) {
		this.interncompany = interncompany;
	}

	public String getStartintern() {
		return startintern;
	}

	public void setStartintern(String startintern) {
		this.startintern = startintern;
	}

	public String getEndintern() {
		return endintern;
	}

	public void setEndintern(String endintern) {
		this.endintern = endintern;
	}

	public String getInterncontent() {
		return interncontent;
	}

	public void setInterncontent(String interncontent) {
		this.interncontent = interncontent;
	}

	public String getLearningname() {
		return learningname;
	}

	public void setLearningname(String learningname) {
		this.learningname = learningname;
	}

	public String getLearningorgan() {
		return learningorgan;
	}

	public void setLearningorgan(String learningorgan) {
		this.learningorgan = learningorgan;
	}

	public String getStartlearning() {
		return startlearning;
	}

	public void setStartlearning(String startlearning) {
		this.startlearning = startlearning;
	}

	public String getEndlearning() {
		return endlearning;
	}

	public void setEndlearning(String endlearning) {
		this.endlearning = endlearning;
	}

	public String getLearningcontent() {
		return learningcontent;
	}

	public void setLearningcontent(String learningcontent) {
		this.learningcontent = learningcontent;
	}

	public String getLicensename() {
		return licensename;
	}

	public void setLicensename(String licensename) {
		this.licensename = licensename;
	}

	public String getLicensepublish() {
		return licensepublish;
	}

	public void setLicensepublish(String licensepublish) {
		this.licensepublish = licensepublish;
	}

	public String getStartlicense() {
		return startlicense;
	}

	public void setStartlicense(String startlicense) {
		this.startlicense = startlicense;
	}

	public String getAward_title() {
		return award_title;
	}

	public void setAward_title(String award_title) {
		this.award_title = award_title;
	}

	public String getAward_inst() {
		return award_inst;
	}

	public void setAward_inst(String award_inst) {
		this.award_inst = award_inst;
	}

	public String getAward_year() {
		return award_year;
	}

	public void setAward_year(String award_year) {
		this.award_year = award_year;
	}

	public String getAward_content() {
		return award_content;
	}

	public void setAward_content(String award_content) {
		this.award_content = award_content;
	}

	public String getCountry_name() {
		return country_name;
	}

	public void setCountry_name(String country_name) {
		this.country_name = country_name;
	}

	public String getCountry_start() {
		return country_start;
	}

	public void setCountry_start(String country_start) {
		this.country_start = country_start;
	}

	public String getCountry_end() {
		return country_end;
	}

	public void setCountry_end(String country_end) {
		this.country_end = country_end;
	}

	public String getAbroad_content() {
		return abroad_content;
	}

	public void setAbroad_content(String abroad_content) {
		this.abroad_content = abroad_content;
	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public String getLanguage_kind() {
		return language_kind;
	}

	public void setLanguage_kind(String language_kind) {
		this.language_kind = language_kind;
	}

	public String getLanguage_level() {
		return language_level;
	}

	public void setLanguage_level(String language_level) {
		this.language_level = language_level;
	}

	public String getUrl_addr() {
		return url_addr;
	}

	public void setUrl_addr(String url_addr) {
		this.url_addr = url_addr;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public int getFilesize() {
		return filesize;
	}

	public void setFilesize(int filesize) {
		this.filesize = filesize;
	}

	public String getBohun() {
		return bohun;
	}

	public void setBohun(String bohun) {
		this.bohun = bohun;
	}

	public String getJob_protection() {
		return job_protection;
	}

	public void setJob_protection(String job_protection) {
		this.job_protection = job_protection;
	}

	public String getSubsidy() {
		return subsidy;
	}

	public void setSubsidy(String subsidy) {
		this.subsidy = subsidy;
	}

	public String getObstacle() {
		return obstacle;
	}

	public void setObstacle(String obstacle) {
		this.obstacle = obstacle;
	}

	public String getMilitaryService() {
		return MilitaryService;
	}

	public void setMilitaryService(String militaryService) {
		MilitaryService = militaryService;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getResume_no() {
		return resume_no;
	}

	public void setResume_no(String resume_no) {
		this.resume_no = resume_no;
	}
}
