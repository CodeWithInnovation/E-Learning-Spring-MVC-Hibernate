package com.project.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="Cour")
public class Cour {
	
	@Id
	@GeneratedValue
	private Integer id;	
	private String name;	
	private String description ;
    
	@Column(name = "data", unique = false, nullable = false, length = 1000000000)
	private byte[] data;
	
    @ManyToOne
	private enseignant ens ;
    
    @OneToOne (fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "cour")
    private Quiz quiz ;
    
    public Quiz getQuiz() {
		return quiz;
	}
	public void setQuiz(Quiz quiz) {
		this.quiz = quiz;
	}
    
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public enseignant getEns() {
		return ens;
	}
	public void setEns(enseignant ens) {
		this.ens = ens;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	 
	public byte[] getData() {
		return data;
	}
	public void setData(byte[] data) {
		this.data = data;
	}
	
	
	
	
}
