package com.unicology.dto.resume;

public class ResumeDTO {

	private String resume_title;
	private String UserName;
	private String UserBirth;
	private String UserEmail;
	private String UserTel;
	private String UserPhone;
	private String UserAdress;
	
	public ResumeDTO() {
		
	}

	public ResumeDTO(String resume_title, String userName, String userBirth, String userEmail, String userTel,
			String userPhone, String userAdress) {
		super();
		this.resume_title = resume_title;
		UserName = userName;
		UserBirth = userBirth;
		UserEmail = userEmail;
		UserTel = userTel;
		UserPhone = userPhone;
		UserAdress = userAdress;
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
	
}
