package com.unicology.dto.jasowrite;

import java.util.Date;

public class JasoWriteDTO {

	private int jno;
	private int num;
	private String title;
	private String question;
	private String answer;
	private String writer;
	private Date regdate;
	
	public JasoWriteDTO() {}
	
	public JasoWriteDTO(int num, String title, String question, String answer, String writer) {
		super();
		this.num = num;
		this.title = title;
		this.question = question;
		this.answer = answer;
		this.writer = writer;
	}

	public int getJno() {
		return jno;
	}

	public void setJno(int jno) {
		this.jno = jno;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}
}
