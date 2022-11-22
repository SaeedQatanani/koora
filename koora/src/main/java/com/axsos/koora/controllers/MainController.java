package com.axsos.koora.controllers;

import java.security.Principal;
import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.axsos.koora.models.Event;
import com.axsos.koora.models.Match;
import com.axsos.koora.models.Team;
import com.axsos.koora.models.User;
import com.axsos.koora.services.MainService;
import com.axsos.koora.services.MatchService;
import com.axsos.koora.services.UserService;

@Controller
public class MainController {
	private final UserService userService;
	private final MainService mainService;
	private final MatchService matchService;
	public  MainController (UserService userService, MainService mainService, MatchService matchService){
      this.userService = userService;
      this.mainService=mainService ;
      this.matchService=matchService ;
  }
	@GetMapping("/matchevents/{id}")
	public String events(Model model, @PathVariable("id")Long id) {
		Match match = matchService.findonematch(id);
		 List<Event> events = match.getGames();
	     model.addAttribute("events", events);

	     model.addAttribute("match", match);
		return "events.jsp";
	}
	@GetMapping("/matches")
	public String matches(Model model) {
		 List<Match> matches = matchService.findallmatches();
	     model.addAttribute("matches", matches);
		return "matches.jsp";
	}
	 @GetMapping("/events/new")
	   public String newevent(@ModelAttribute("event")Event event,Principal principal, Model model) {
		 String username = principal.getName();
		 List<Match> matches = matchService.findallmatches();
	     model.addAttribute("currentUser", userService.findByUsername(username));
	     model.addAttribute("matches", matches);
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
		   List<Match> matches = matchService.findallmatches();
		   model.addAttribute("currentUser", userService.findByUsername(username));
		   model.addAttribute("matches", matches);
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
	   
	   @GetMapping("/{id}")
	   public String showevent(@PathVariable("id") Long id, Model model, Principal principal) {
		   Event event = mainService.findoneevent(id);
		   String username = principal.getName();
		   User user = userService.findByUsername(username);
		   List<User> users = event.getAttendees();
		   boolean attendance = false;
		   if (users.contains(user)) {
			   attendance = true;
		   }
		   Integer remainingSeats = event.getCapacity() - users.size();
		   model.addAttribute("event", event);
	       model.addAttribute("currentUser", user);
	       model.addAttribute("attendance", attendance);
	       model.addAttribute("remainingSeats", remainingSeats);
		   return "oneevent.jsp";
	   }
	   
	   @GetMapping("/events/{id}/delete")
	   public String deleteEvent(@PathVariable("id") Long id) {
		   mainService.deleteevent(id);
		   return "redirect:/home";
	   }
	   
	   @GetMapping("/events/{id}/join")
	   public String join(@PathVariable("id") Long id, Principal principal) {
			Event event = mainService.findoneevent(id);
			String username = principal.getName();
			User user = userService.findByUsername(username);
			List<User> users = event.getAttendees();
			Integer attendees = users.size();
			if (attendees < event.getCapacity()) {
				users.add(user);
				event.setAttendees(users);
				mainService.updateevent(event);
				return "redirect:/home";	
			}
			return "/events"+id;
		    }
	   
	   @GetMapping("/events/{id}/leave")
	   public String leave(@PathVariable("id") Long id, Principal principal) {
			Event event = mainService.findoneevent(id);
			String username = principal.getName();
			User user = userService.findByUsername(username);
			List<User> users = event.getAttendees();
			users.remove(user);
			event.setAttendees(users);
			mainService.updateevent(event);
		    return "redirect:/home";
		    }
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   @GetMapping("/profile")
	   public String profile(Principal principal, Model model) {
			String username = principal.getName();
			User user = userService.findByUsername(username);
			boolean predection = false;
			if (user.getPrediction()!=null) {
				predection = true;
			}
			model.addAttribute("predection", predection);
		    model.addAttribute("currentUser", user);
		    model.addAttribute("teams", Team.values());
		    return "profile.jsp";
		    }
	   @PostMapping("/profile/predict")
	   public String predict(Principal principal, @RequestParam("prediction") Team team) {
		   System.out.println("fff");
		   String username = principal.getName();
		   User user = userService.findByUsername(username);
		   user.setPrediction(team);
		   user.setConfirm(user.getPassword());
		   mainService.updatUser(user);
		   return "redirect:/profile";
	   }
	   @GetMapping("/test")
	   public String test() {
		   return "test.jsp";
	   }
	   @GetMapping("/aboutus")
	   public String aboutUs() {
		   return "aboutus.jsp";
	   }
//	   @GetMapping("/matches")
//	   public String showMatches() {
//		   return "matches.jsp";
//	   }
}
