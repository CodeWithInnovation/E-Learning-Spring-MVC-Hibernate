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
public class QuizDAOImpl implements QuizDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public void addQuiz(Quiz quiz) {
		getCurrentSession().save(quiz);
	
	}

	

	@Override
	public Quiz getQuiz(int id) {
		Quiz quiz = (Quiz) getCurrentSession().get(Quiz.class, id);
		return quiz ;
	}

	@Override
	public void updateQuiz(Quiz quiz) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteQuiz(int id) {
		Quiz quiz = getQuiz(id);
		if (quiz != null)		
			getCurrentSession().delete(quiz);
		
	}

	@Override
	public List<Quiz> getQuizlist(int id) {
		return getCurrentSession().createQuery("from Quiz WHERE ens_id="+id).list();	}
	
	@Override
	public List<Quiz> getQuizlist() {
		return getCurrentSession().createQuery("from Quiz").list();	}
		
	}
