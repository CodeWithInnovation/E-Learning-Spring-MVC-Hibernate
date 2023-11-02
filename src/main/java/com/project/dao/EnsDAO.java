package com.project.dao;

import java.util.List;


import com.project.model.Login;
import com.project.model.Quiz;
import com.project.model.Team;
import com.project.model.enseignant;

public interface EnsDAO {
	public void addEns(enseignant ens);
	public void updateEns(enseignant ens);
	public enseignant getEns(int id);
	public void deleteEns(int id);
	public List<enseignant> getEnslist();
	public enseignant validateEns(Login login);
	void addQuiz(enseignant ens, Quiz quiz);
}
