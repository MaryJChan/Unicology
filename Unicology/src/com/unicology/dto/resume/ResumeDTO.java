package com.unicology.dto.resume;

public class ResumeDTO {

	private String resume_title;
	private String UserName;
	private String UserBirth;
	private String UserSex;
	private String UserEmail;
	private String UserTel;
	private String UserPhone;
	private String UserAdress;
	private String filename;
	private int filesize;
	
	public ResumeDTO() {
		
	}

	public ResumeDTO(String resume_title, String userName, String userBirth, String userSex, String userEmail,
			String userTel, String userPhone, String userAdress, String filename, int filesize) {
		super();
		this.resume_title = resume_title;
		UserName = userName;
		UserBirth = userBirth;
		UserSex = userSex;
		UserEmail = userEmail;
		UserTel = userTel;
		UserPhone = userPhone;
		UserAdress = userAdress;
		this.filename = filename;
		this.filesize = filesize;
	}

	public String getResume_title() {
		return resume_title;
	}

	public void setResume_title(String resume_title) {
		this.resume_title = resume_title;
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
	
}
