package com.project.dao;

import java.util.List;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.Etudiant;
import com.project.model.Login;
import com.project.model.enseignant;
@Repository
public class EtudDAOImpl implements EtudDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public void addEtud(Etudiant etd) {
		getCurrentSession().save(etd);
		
	}

	@Override
	public void updateEtud(Etudiant etud) {
		Etudiant etudToUpdate = getEtud(etud.getId());
		etudToUpdate.setNom(etud.getNom());
		etudToUpdate.setPrenom(etud.getPrenom());
		etudToUpdate.setEmail(etud.getEmail());
		etudToUpdate.setMot_passe(etud.getMot_passe());
				
		getCurrentSession().update(etudToUpdate);		
	}

	@Override
	public Etudiant getEtud(int id) {
		Etudiant etud = (Etudiant) getCurrentSession().get(Etudiant.class, id);
		return etud;
	}

	@Override
	public void deleteEtud(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Etudiant> getEtud() {
		return getCurrentSession().createQuery("from Etudiant").list();

	}

	@Override
	public Etudiant validateEtd(Login login) {
		String SQL_QUERY =" from Etudiant as o where o.email=? and o.mot_passe=?";
		Query query = getCurrentSession().createQuery(SQL_QUERY);
		query.setParameter(0,login.getemail());
		query.setParameter(1,login.getPassword());
		List<Etudiant> list = query.list();


		return list.size() > 0 ? list.get(0):null ;
	}

}
