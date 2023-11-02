package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.dao.EnsDAO;
import com.project.dao.QuizDAO;
import com.project.dao.TeamDAO;
import com.project.model.Login;
import com.project.model.Quiz;
import com.project.model.enseignant;
@Service
@Transactional
public class QuizServiceImpl implements QuizService {

	
	@Autowired
	private QuizDAO quizDAO;

	@Override
	public void addQuiz(Quiz quiz) {

		quizDAO.addQuiz(quiz);
	}

	@Override
	public void updateQuiz(Quiz quiz) {
		quizDAO.updateQuiz(quiz);
		
	}

	@Override
	public Quiz getQuiz(int id) {
		return quizDAO.getQuiz(id);
	}

	@Override
	public void deleteQuiz(int id) {
		quizDAO.deleteQuiz(id);
		
	}

	@Override
	public List<Quiz> getQuizlist(int id) {
		return quizDAO.getQuizlist(id);
	}
	
	@Override
	public List<Quiz> getQuizlist() {
		return quizDAO.getQuizlist();
	}
	
	
	
}
