package com.project.controller;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.Cour;
import com.project.model.enseignant;
import com.project.service.CourService;
import com.project.service.EnsService;
import com.project.service.EtudService;

@Controller
@RequestMapping(value="/Cour")
public class CourController {
		
		@Autowired
		private CourService courService;
		
		@Autowired
		private EnsService ensService;
		private EtudService etdService;
		
		@RequestMapping(value="/add", method=RequestMethod.GET)
		public ModelAndView addTeamPage() {
			ModelAndView modelAndView = new ModelAndView("ensdashbord");
			modelAndView.addObject("Cour", new Cour());
			return modelAndView;
		}
		
		
		@RequestMapping(value="/add", method=RequestMethod.POST)
		public ModelAndView addingTeam(@RequestParam CommonsMultipartFile[] Cr,@RequestParam int ens_id,@RequestParam String name,@RequestParam String description,HttpSession session) 
		{
			
			ModelAndView modelAndView = new ModelAndView("ensdashbord");
			
			 if (Cr != null && Cr.length > 0) 
				 {
			 
				 		enseignant ens= ensService.getEns(ens_id);
				 for (CommonsMultipartFile aFile : Cr){
	                  
		                System.out.println("Saving file: " + aFile.getOriginalFilename());
		                 
		                Cour cour = new Cour();
		                cour.setEns(ens);
		                cour.setName(name);
		                cour.setDescription(description);
		                //cour.setName(aFile.getOriginalFilename());
		                cour.setData(aFile.getBytes());
		                courService.addCour(cour);       
		            }
				 
				 
				 
				 
				 }
			
			 List<Cour> cours = courService.getCourlist(ens_id);
			 session.setAttribute("cours", cours);
			
			return modelAndView;
		}

		
		
		
		@RequestMapping(value="/suprimer/{id}", method=RequestMethod.GET)
		public ModelAndView deleteTeam(@PathVariable Integer id,HttpSession session) {
			ModelAndView modelAndView = new ModelAndView("ensdashbord");
			Integer ens_id=courService.getCour(id).getEns().getId();
			courService.deleteCour(id);
			
			 List<Cour> cours = courService.getCourlist(ens_id);
			 session.setAttribute("cours", cours);
			
			
			return modelAndView;
		}
		
		
		@RequestMapping(value="/download/{id}", method=RequestMethod.GET)
		public ModelAndView download(@PathVariable Integer id,HttpServletResponse response) {
			ModelAndView modelAndView = new ModelAndView("ensdashbord");
			Cour cour = courService.getCour(id);
			try {
				response.setHeader("Content-Disposition", "inline;filename=\"" +cour.getName()+ "\"");
				OutputStream out = response.getOutputStream();
				//response.setContentType(cour.getContentType());
				InputStream myInputStream = new ByteArrayInputStream(cour.getData()); 
				IOUtils.copy(myInputStream, out);
				out.flush();
				out.close();
			
			} catch (IOException e) {
				e.printStackTrace();
			}
			return modelAndView;
		}
		@RequestMapping(value="/download_etud/{id}", method=RequestMethod.GET)
		public ModelAndView download_cour(@PathVariable Integer id,HttpServletResponse response) {
			ModelAndView modelAndView = new ModelAndView("etuddashbord");
			Cour cour = courService.getCour(id);
			try {
				response.setHeader("Content-Disposition", "inline;filename=\"" +cour.getName()+ "\"");
				OutputStream out = response.getOutputStream();
				//response.setContentType(cour.getContentType());
				InputStream myInputStream = new ByteArrayInputStream(cour.getData()); 
				IOUtils.copy(myInputStream, out);
				out.flush();
				out.close();
			
			} catch (IOException e) {
				e.printStackTrace();
			}
			return modelAndView;
		}
		
		
		
		
		
		
		

		
		
		
		
		
		
		

}
