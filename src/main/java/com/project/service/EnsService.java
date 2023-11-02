package com.project.service;

import java.util.List;

import com.project.model.Login;
import com.project.model.Quiz;
import com.project.model.enseignant;

public interface EnsService {
	public void addEns(enseignant ens);
	public void updateEns(enseignant ens);
	public enseignant getEns(int id);
	public void deleteEns(int id);
	public List<enseignant> getEns();
	public enseignant validateEns(Login login);
	void addQuiz(enseignant ens, Quiz quiz);


}
