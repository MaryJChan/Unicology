package com.unicology.dto.jasosu;

public class JasosuDTO {
	
	private int jaso_no;
	private String jaso_field;
	private String jaso_title;
	private String jaso_contents;
	
	public JasosuDTO() {
		
	}

	public JasosuDTO(String jaso_field, String jaso_title, String jaso_contents) {
		super();
		this.jaso_field = jaso_field;
		this.jaso_title = jaso_title;
		this.jaso_contents = jaso_contents;
	}
	
	public String getJaso_field() {
		return jaso_field;
	}

	public void setJaso_field(String jaso_field) {
		this.jaso_field = jaso_field;
	}

	public int getJaso_no() {
		return jaso_no;
	}

	public void setJaso_no(int jaso_no) {
		this.jaso_no = jaso_no;
	}

	public String getJaso_title() {
		return jaso_title;
	}

	public void setJaso_title(String jaso_title) {
		this.jaso_title = jaso_title;
	}

	public String getJaso_contents() {
		return jaso_contents;
	}

	public void setJaso_contents(String jaso_contents) {
		this.jaso_contents = jaso_contents;
	}
	
	
	
}
