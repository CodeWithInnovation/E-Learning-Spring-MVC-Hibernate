package com.project.dao;

import java.util.List;


import com.project.model.Etudiant;
import com.project.model.Login;
import com.project.model.enseignant;

public interface EtudDAO {
	public void addEtud(Etudiant etd);
	public void updateEtud(Etudiant etd);
	public Etudiant getEtud(int id);
	public void deleteEtud(int id);
	public List<Etudiant> getEtud();
	public Etudiant validateEtd(Login login);

}
