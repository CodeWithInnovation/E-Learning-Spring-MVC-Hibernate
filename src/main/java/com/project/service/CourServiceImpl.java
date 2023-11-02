package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.dao.CourDAO;
import com.project.dao.EnsDAO;
import com.project.dao.TeamDAO;
import com.project.model.Cour;
import com.project.model.Login;
import com.project.model.Quiz;
import com.project.model.enseignant;
@Service
@Transactional
public class CourServiceImpl implements CourService {

	
	@Autowired
	private CourDAO courDAO;

	@Override
	public void addCour(Cour cour) {
		courDAO.addCour(cour);
	}

	@Override
	public List<Cour> getCourlist(int id) {
		return courDAO.getCourlist(id);
	}

	@Override
	public void deleteCour(int id) {
		courDAO.deleteCour(id);
		
	}

	@Override
	public Cour getCour(int id) {
		return courDAO.getCour(id);
	}

	@Override
	public List<Cour> getCourlist() {
		return courDAO.getCourlist();
	}



	

	
	

}
