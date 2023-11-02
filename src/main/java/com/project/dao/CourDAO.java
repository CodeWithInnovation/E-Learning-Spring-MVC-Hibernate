package com.project.dao;

import java.util.List;


import com.project.model.Cour;
import com.project.model.Team;

public interface CourDAO {
	public void addCour(Cour cour);
	public void deleteCour(int id);
	public Cour getCour(int id);
	public List<Cour> getCourlist(int id);
	public List<Cour> getCourlist();

}
