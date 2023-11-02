package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.dao.EnsDAO;
import com.project.dao.TeamDAO;
import com.project.model.Login;
import com.project.model.Quiz;
import com.project.model.enseignant;
@Service
@Transactional
public class EnsServiceImpl implements EnsService {

	
	@Autowired
	private EnsDAO ensDAO;
	
	@Override
	public void addEns(enseignant ens) {
		
		ensDAO.addEns(ens);
	}

	@Override
	public void updateEns(enseignant ens) {
		ensDAO.updateEns(ens);
		
	}

	@Override
	public enseignant getEns(int id) {
		return ensDAO.getEns(id);
	}

	@Override
	public void deleteEns(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<enseignant> getEns() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public enseignant validateEns(Login login) {
		return ensDAO.validateEns(login);
	}

	@Override
	public void addQuiz(enseignant ens, Quiz quiz) {
		ensDAO.addQuiz(ens, quiz);
		
	}

}
