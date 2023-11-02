package com.project.dao;

import java.util.Arrays;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.Login;
import com.project.model.Quiz;
import com.project.model.Team;
import com.project.model.enseignant;

@Repository
public class EnsDAOImpl implements EnsDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public void addEns(enseignant ens) {
		getCurrentSession().save(ens);
		
	}

	@Override
	public void updateEns(enseignant ens) {
		enseignant ensToUpdate = getEns(ens.getId());
		ensToUpdate.setNom(ens.getNom());
		ensToUpdate.setPrenom(ens.getPrenom());
		ensToUpdate.setEmail(ens.getEmail());
		ensToUpdate.setGrade(ens.getGrade());
		ensToUpdate.setMot_passe(ens.getMot_passe());
		ensToUpdate.setTel(ens.getTel());
		getCurrentSession().update(ensToUpdate);

		
	}

	@Override
	public enseignant getEns(int id) {
		enseignant ens = (enseignant) getCurrentSession().get(enseignant.class, id);
		return ens;
	}

	@Override
	public void deleteEns(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<enseignant> getEnslist() {
		return getCurrentSession().createQuery("from enseignant").list();

	}

	@Override
	public enseignant validateEns(Login login) {
		
		String SQL_QUERY =" from enseignant as o where o.email=? and o.mot_passe=?";
		Query query = getCurrentSession().createQuery(SQL_QUERY);
		query.setParameter(0,login.getemail());
		query.setParameter(1,login.getPassword());
		List<enseignant> list = query.list();


		return list.size() > 0 ? list.get(0):null ;
		
		
	}

	@Override
	public void addQuiz(enseignant ens,Quiz quiz) {
		enseignant ensToUpdate = getEns(ens.getId());
	    ensToUpdate.getQuizs().add(quiz);
		getCurrentSession().update(ensToUpdate);
		
	}

	

	
	
	
	

}
