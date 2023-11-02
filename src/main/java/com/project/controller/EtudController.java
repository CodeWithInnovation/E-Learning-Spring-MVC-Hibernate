package com.project.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.project.model.*;
import com.project.service.EtudService;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.PathVariable;
import com.project.model.Cour;
import com.project.model.Login;
import com.project.model.Quiz;
import com.project.model.Team;
import com.project.model.enseignant;
import com.project.service.CourService;
import com.project.service.EnsService;
import com.project.service.QuizService;
import com.project.service.TeamService;


@Controller
@RequestMapping(value="/Etud")

public class EtudController {
	@Autowired
	private EtudService etdService;
	@Autowired
	private CourService courService;
	
	@Autowired
	private QuizService quizService;
	
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public ModelAndView addTeamPage() {
		ModelAndView modelAndView = new ModelAndView("index");
		modelAndView.addObject("Etudiant", new Etudiant());
		return modelAndView;
	}
	
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public ModelAndView addingTeam(@ModelAttribute Etudiant etd) {
		
		ModelAndView modelAndView = new ModelAndView("index");
		etdService.addEtud(etd);
		
		String message = "Ens was successfully added.";
		modelAndView.addObject("message", message);
		
		return modelAndView;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView viewLogin(@ModelAttribute Etudiant etud) {
		ModelAndView modelAndView = new ModelAndView("index");
		modelAndView.addObject("Login", new Login());
		return modelAndView;
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView processLogin(@ModelAttribute("Login") Login login,HttpSession session) {
		ModelAndView modelAndView = null ;
		

		Etudiant etudiant =etdService.validateEtd(login);				
		if (etudiant != null) {
			
			modelAndView = new ModelAndView("etuddashbord");
			session.setAttribute("etud", etudiant);
			System.out.println("Succes");
			
		
			List<Cour> cours = courService.getCourlist();
			session.setAttribute("cours", cours);
			
			
			List<Quiz> quizs = quizService.getQuizlist();
			session.setAttribute("quizs", quizs);
			
			
		} else {
			modelAndView = new ModelAndView("index_alert");
			modelAndView.addObject("message", "Email ou mot passe incorecte");

			System.out.println("fails");
		
			
			
			
		}
		return modelAndView;
	}
	
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView logout(HttpSession session) {
		ModelAndView modelAndView = new ModelAndView("index");
		session.removeAttribute("etud");
		return modelAndView ;
	}
	
	
	
	
	@RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
	public ModelAndView editEtud(@PathVariable Integer id) {
		ModelAndView modelAndView = new ModelAndView("etuddashbord");
		
		Etudiant etudiant =etdService.getEtud(id) ;
		modelAndView.addObject("etud",etudiant);
		return modelAndView;
	}
	
	@RequestMapping(value="/edit/{id}", method=RequestMethod.POST)
	public ModelAndView edditEtud(@ModelAttribute Etudiant etd, @PathVariable Integer id,HttpSession session) {
		
		ModelAndView modelAndView = new ModelAndView("etuddashbord");
		
		etdService.updateEtud(etd);
		
		Etudiant et=etdService.getEtud(id);
		session.setAttribute("etud", et);
		
		return modelAndView;
	}
	
	
	
}
