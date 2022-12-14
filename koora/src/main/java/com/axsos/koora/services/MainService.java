package com.axsos.koora.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.axsos.koora.models.Event;
import com.axsos.koora.models.User;
import com.axsos.koora.repositories.EventRepository;
import com.axsos.koora.repositories.UserRepository;

@Service
public class MainService {
	private UserRepository userRepository;
	private EventRepository eventRepository;
	
	public MainService(UserRepository userRepository,EventRepository eventRepository)
	{
		this.userRepository=userRepository;
		this.eventRepository=eventRepository;
	}
	
	public Event createvent(Event event) {
		return eventRepository.save(event);
	}
	
	public Event updateevent(Event event) {
		return eventRepository.save(event);
	}

	public Event findoneevent(Long id) {
		Optional <Event> optionalevent = eventRepository.findById(id);
		if (optionalevent.isPresent()) {
			return optionalevent.get();
		}
		else {
			return null;
		}
	}

	public List<Event> findallevents(){
		return eventRepository.findAll();
	}
	
	public void deleteevent(Long id) {
		eventRepository.deleteById(id);
	}
	
	public User updatUser(User user) {
		return userRepository.save(user);
	}
	
	

}
