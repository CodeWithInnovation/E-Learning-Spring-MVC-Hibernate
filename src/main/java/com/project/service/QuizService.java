package com.project.service;

import java.util.List;

import com.project.model.Login;
import com.project.model.Quiz;
import com.project.model.enseignant;

public interface QuizService {
	public void addQuiz(Quiz quiz);
	public void updateQuiz(Quiz quiz);
	public Quiz getQuiz(int id);
	public void deleteQuiz(int id);
	public List<Quiz> getQuizlist(int id);
	public List<Quiz> getQuizlist();

}
