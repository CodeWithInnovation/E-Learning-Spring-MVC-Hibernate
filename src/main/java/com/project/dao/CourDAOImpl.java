package com.project.dao;

import java.util.Arrays;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.Cour;
import com.project.model.Login;
import com.project.model.Quiz;
import com.project.model.Team;
import com.project.model.enseignant;

@Repository
public class CourDAOImpl implements CourDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public void addCour(Cour cour) {
		getCurrentSession().save(cour);
	}

	

	@Override
	public void deleteCour(int id) {
		Cour cour = getCour(id);
		if (cour != null)
			getCurrentSession().delete(cour);
		
	}

	@Override
	public Cour getCour(int id) {
		Cour cour = (Cour) getCurrentSession().get(Cour.class, id);
		return cour;
	}

	@Override
	public List<Cour> getCourlist(int id) 
	{
		
			return getCurrentSession().createQuery("from Cour WHERE ens_id="+id).list();
	}

	@Override
	public List<Cour> getCourlist() {
		return getCurrentSession().createQuery("from Cour").list();
	}
	
	
	
	

	
	
	
	

}
