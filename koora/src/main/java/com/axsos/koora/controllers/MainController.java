package com.axsos.koora.controllers;

import java.security.Principal;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.axsos.koora.models.Event;
import com.axsos.koora.services.MainService;
import com.axsos.koora.services.UserService;

@Controller
public class MainController {
	private final UserService userService;
	private final MainService mainService;
	public  MainController  (UserService userService, MainService mainService ){
      this.userService = userService;
      this.mainService=mainService ;
  }
	
	 @GetMapping ("/events/new")
	   public String newevent(@ModelAttribute("event")Event event,Principal principal, Model model) {
		 String username = principal.getName();
	     model.addAttribute("currentUser", userService.findByUsername(username));
//		   Long user_id = (Long) session.getAttribute("user_id");
//		   User thisUser = userService.findUserById(user_id);
//	       model.addAttribute("thisuser", thisUser);
		   return "newevent.jsp";
	   }
	   
	   @PostMapping("/events/create")
	   public String createevent(@Valid @ModelAttribute("event")Event event, BindingResult result,Principal principal) {
		   if (result.hasErrors()) {
			   return "newevent.jsp";
		   }
		   else {  
		       mainService.createvent(event);
			   return "redirect:/home";
		   }
	   }
	   
	   @GetMapping("/events/{id}/edit")
	   public String editevent(@PathVariable("id")Long id,Principal principal, Model model) {
		   Event event= mainService.findoneevent(id);
		   String username = principal.getName();
		   model.addAttribute("currentUser", userService.findByUsername(username));
		   model.addAttribute("event", event);
		   return "editevent.jsp";
	   }
	   
	   @PutMapping("/events/{id}/edit")
	   public String updateevent(@Valid @ModelAttribute("event")Event event, BindingResult result,Principal principal) {
		   if (result.hasErrors()) {
			    return "editevent.jsp";
		   }
		   else {
		       mainService.updateevent(event);
			   return "redirect:/home";
		   }
	   }
	   
	   @GetMapping("/events/{id}")
	   public String showevent(@PathVariable("id") Long id, Model model,Principal principal) {
		   Event theevent = mainService.findoneevent(id);
		   model.addAttribute("event", theevent);
//		   Long user_id = (Long) session.getAttribute("user_id");
		   String username = principal.getName();
	       model.addAttribute("currentUser", userService.findByUsername(username));
		   return "oneevent.jsp";
	   }
	   
	   @GetMapping("/events/{id}/delete")
	   public String deleteEvent(@PathVariable("id") Long id) {
		   mainService.deleteevent(id);
		   return "redirect:/home";
	   }
}
