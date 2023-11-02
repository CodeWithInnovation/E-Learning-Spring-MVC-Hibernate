package com.project.model;
import javax.persistence.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="Etudiant")
public class Etudiant {
	@Id
	@GeneratedValue
	private Integer id;
	
	private String nom;
	private String prenom;
	private String username;
	private String email;
	private String mot_passe;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMot_passe() {
		return mot_passe;
	}
	public void setMot_passe(String mot_passe) {
		this.mot_passe = mot_passe;
	}
	

}
