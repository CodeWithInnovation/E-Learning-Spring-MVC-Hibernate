package com.project.service;


import java.util.List;


import com.project.model.Cour;


public interface CourService {
	public void addCour(Cour cour);
	public List<Cour> getCourlist(int id);
	public void deleteCour(int id);
	public Cour getCour(int id);
	public List<Cour> getCourlist();


}
