package com.project.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.Cour;
import com.project.model.Login;
import com.project.model.Quiz;
import com.project.model.Team;
import com.project.model.enseignant;
import com.project.model.quiz_details;
import com.project.service.CourService;
import com.project.service.EnsService;
import com.project.service.QuizService;
import com.project.service.TeamService;

@Controller
@RequestMapping(value="/Ens")
public class EnsController {
		
		@Autowired
		private EnsService ensService;
		
		@Autowired
		private CourService courService;
		
		@Autowired
		private QuizService quizService;
			
		@RequestMapping(value="/add", method=RequestMethod.GET)
		public ModelAndView addTeamPage() {
			ModelAndView modelAndView = new ModelAndView("index");
			modelAndView.addObject("enseignant", new enseignant());
			return modelAndView;
		}
		
		
		@RequestMapping(value="/add", method=RequestMethod.POST)
		public ModelAndView addingTeam(@ModelAttribute enseignant ens) {
			
			ModelAndView modelAndView = new ModelAndView("index");
			ensService.addEns(ens);
			
			String message = "Ens was successfully added.";
			modelAndView.addObject("message", message);
			
			return modelAndView;
		}

		
		
		
		
		
		
		
		
		
		@RequestMapping(value = "/login", method = RequestMethod.GET)
		public ModelAndView viewLogin(@ModelAttribute enseignant ens) {
			ModelAndView modelAndView = new ModelAndView("ensdashbord");
			modelAndView.addObject("Login", new Login());
			return modelAndView;
		}

		@RequestMapping(value = "/login", method = RequestMethod.POST)
		public ModelAndView processLogin(@ModelAttribute("Login") Login login,HttpSession session) {
			ModelAndView modelAndView = null ;
			

			enseignant enseignant =ensService.validateEns(login);				
			if (enseignant != null) {
				
				modelAndView = new ModelAndView("ensdashbord");
				modelAndView.addObject("ens",enseignant);
				session.setAttribute("EnsObj", enseignant);
				System.out.println("Enseignant : Succes");
				
				
				List<Cour> cours = courService.getCourlist(enseignant.getId());
				session.setAttribute("cours", cours);
				
				List<Quiz> quizs = quizService.getQuizlist(enseignant.getId());     				
				session.setAttribute("quizs", quizs);

				
				
									
				
			} else {
				modelAndView = new ModelAndView("index");
				modelAndView.addObject("message", "Email ou mot passe incorecte");

				System.out.println("fails");
			}
			return modelAndView;
		}
		
		
		@RequestMapping(value = "/logout", method = RequestMethod.GET)
		public ModelAndView logout(HttpSession session) {
			ModelAndView modelAndView = new ModelAndView("index");
			session.removeAttribute("EnsObj");
			return modelAndView ;
		}
		
		@RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
		public ModelAndView editEns(@PathVariable Integer id) {
			ModelAndView modelAndView = new ModelAndView("ensdashbord");
			
			enseignant enseignant =ensService.getEns(id);
			modelAndView.addObject("ens",enseignant);
			return modelAndView;
		}
		
		@RequestMapping(value="/edit/{id}", method=RequestMethod.POST)
		public ModelAndView edditEns(@ModelAttribute enseignant ens, @PathVariable Integer id,HttpSession session) {
			
			ModelAndView modelAndView = new ModelAndView("ensdashbord");
			
			ensService.updateEns(ens);
			enseignant en=ensService.getEns(id);
			session.setAttribute("EnsObj", en);
			
			return modelAndView;
		}
		

		
		@RequestMapping(value="/addQuiz/{enseignant_id}", method=RequestMethod.GET)
		public ModelAndView addQuiz(@PathVariable Integer enseignant_id) {
			ModelAndView modelAndView = new ModelAndView("ensdashbord");
			
			enseignant enseignant =ensService.getEns(enseignant_id);
			modelAndView.addObject("ens",enseignant);
			return modelAndView;
		}
		
		@RequestMapping(value="/addQuiz/{enseignant_id}", method=RequestMethod.POST)
		public ModelAndView addQuiz(@ModelAttribute enseignant ens,@ModelAttribute Quiz quiz, @PathVariable Integer enseignant_id) {
			
			ModelAndView modelAndView = new ModelAndView("ensdashbord");
			
			ensService.addQuiz(ens, quiz);
			
			String message = "Quiz was successfully created.";
			modelAndView.addObject("message", message);
			
			return modelAndView;
		}
		
		
		
		
		
		

}
