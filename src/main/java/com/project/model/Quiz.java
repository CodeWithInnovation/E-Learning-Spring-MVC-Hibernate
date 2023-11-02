package com.project.model;



import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;


@Entity
@Table(name="Quiz")
public class Quiz {
	
	@Id
	@GeneratedValue
	private Integer id;
	
	private String question;
	private String choix1;
	private String choix2;
	private String choix3;	
	
	@ManyToOne
	private enseignant ens ;
	
	
	@OneToOne (fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinColumn (name = "cour_id", nullable = false,unique=true)
	private Cour cour;
	
	
	
	public enseignant getEns() {
		return ens;
	}
	public void setEns(enseignant ens) {
		this.ens = ens;
	}
	public Cour getCour() {
		return cour;
	}
	public void setCour(Cour cour) {
		this.cour = cour;
	}
	
	
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
	
	
	

	
}