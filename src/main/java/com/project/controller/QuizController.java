package com.project.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
@RequestMapping(value="/Quiz")
public class QuizController {
		
			@Autowired
			private EnsService ensService;
			
			@Autowired
			private QuizService quizService;
			
			@Autowired
			private CourService courService;
		
		@RequestMapping(value="/add", method=RequestMethod.GET)
		public ModelAndView addquiz() {
			ModelAndView modelAndView = new ModelAndView("ensdashbord");
			modelAndView.addObject("Quiz", new Quiz());
			return modelAndView;
		}
		
		
		@RequestMapping(value="/add", method=RequestMethod.POST)
		public ModelAndView addquiz(@ModelAttribute Quiz quiz,Errors error,@RequestParam int ens_id,@RequestParam int cour_id,HttpSession session) 
		{
			
			ModelAndView modelAndView = new ModelAndView("ensdashbord");
			
			enseignant ens= ensService.getEns(ens_id);
			Cour cour= courService.getCour(cour_id);
			quiz.setEns(ens);
			quiz.setCour(cour);
	
			quizService.addQuiz(quiz);
			
		
			List<Quiz> quizs = quizService.getQuizlist(ens_id);					
			session.setAttribute("quizs", quizs);

			
			
			return modelAndView;
		}

		
		@RequestMapping(value="/suprimer/{id}", method=RequestMethod.GET)
		public ModelAndView deleteQuiz(@PathVariable Integer id,HttpSession session)  {
			ModelAndView modelAndView = new ModelAndView("ensdashbord");
			Integer ens_id = quizService.getQuiz(id).getEns().getId();
			quizService.deleteQuiz(id);
			
			List<Quiz> quizs = quizService.getQuizlist(ens_id);		
			session.setAttribute("quizs", quizs);

			
			return modelAndView;
		}
	
		
		@RequestMapping(value="/passer_quiz/{id}", method=RequestMethod.GET)
		public ModelAndView passerQuiz(@PathVariable Integer id,HttpSession session) {
			ModelAndView modelAndView = new ModelAndView("passer_quiz");
			
			Quiz quiz = quizService.getQuiz(id);
			session.setAttribute("quiz", quiz);
			System.out.println(""+quiz.getQuestion());
			return modelAndView;
		}


}
