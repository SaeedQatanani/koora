package com.axsos.koora.controllers;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.axsos.koora.models.Match;
import com.axsos.koora.services.MatchService;

@Controller
public class MatchController {
	private final MatchService matchService;
	
	public MatchController(MatchService matchService) {
		this.matchService= matchService;
		
	}
	
	 @GetMapping ("/admin/new")
	   public String newmatch(@ModelAttribute("match")Match match) {
		   return "newmatch.jsp";
	   }
	   
	   @PostMapping("/admin/create")
	   public String creatematch(@Valid @ModelAttribute("match")Match match, BindingResult result) {
		   if (result.hasErrors()) {
			   return "newmatch.jsp";
		   }
		   else {  
			   matchService.creatMatch(match);
			   return "redirect:/admin";
		   }
	   }
	   
	   @GetMapping("/admin/{id}/edit")
	   public String editmatch(@PathVariable("id")Long id, Model model) {
		   Match match= matchService.findonematch(id);
		   model.addAttribute("match", match);
		   return "editmatch.jsp";
	   }
	   
	   @PutMapping("/admin/{id}/edit")
	   public String updatethematch(@Valid @ModelAttribute("match")Match match, BindingResult result) {
		   if (result.hasErrors()) {
			    return "editmatch.jsp";
		   }
		   else {
			   matchService.updateMatch(match);
			   return "redirect:/admin";
		   }
	   }
	   
	   @GetMapping("/admin/{id}")
	   public String showematch(@PathVariable("id") Long id, Model model) {
		   Match thematch = matchService.findonematch(id);
		   model.addAttribute("thematch", thematch);
	   
		   return "onematch.jsp";
	   }
	   
	   @GetMapping("/admin/{id}/delete")
	   public String deletethematch(@PathVariable("id") Long id) {
		   matchService.deletematch(id);
		   return "redirect:/admin";
	   }

}
