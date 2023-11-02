package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.project.dao.EtudDAO;
import com.project.model.Etudiant;
import com.project.model.Login;
@Service
@Transactional
public class EtudServiceImpl implements EtudService {

	
	@Autowired
	private EtudDAO etdDAO;
	
	@Override
	public void addEtud(Etudiant etd) {
		etdDAO.addEtud(etd);
		
	}

	@Override
	public void updateEtud(Etudiant etd) {
			etdDAO.updateEtud(etd);		
	}

	@Override
	public Etudiant getEtud(int id) {
		return etdDAO.getEtud(id);
	}

	@Override
	public void deleteEtud(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Etudiant> getEtud() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Etudiant validateEtd(Login login) {
		return etdDAO.validateEtd(login);
	}

}
