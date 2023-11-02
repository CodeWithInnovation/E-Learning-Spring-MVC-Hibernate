package com.project.model;

public class quiz_details 
{

	private Integer id;
	
	private String question;
	private String choix1;
	private String choix2;
	private String choix3;	

	private String cour_name ;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getChoix1() {
		return choix1;
	}

	public void setChoix1(String choix1) {
		this.choix1 = choix1;
	}

	public String getChoix2() {
		return choix2;
	}

	public void setChoix2(String choix2) {
		this.choix2 = choix2;
	}

	public String getChoix3() {
		return choix3;
	}

	public void setChoix3(String choix3) {
		this.choix3 = choix3;
	}

	public String getCour_name() {
		return cour_name;
	}

	public void setCour_name(String cour_name) {
		this.cour_name = cour_name;
	}
	

}
