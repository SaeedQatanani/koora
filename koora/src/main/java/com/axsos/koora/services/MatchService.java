package com.axsos.koora.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;


import com.axsos.koora.models.Match;
import com.axsos.koora.repositories.MatchRepository;

@Service
public class MatchService {
	private MatchRepository matchRepository;
	
	public MatchService(MatchRepository matchRepository) {
		this.matchRepository= matchRepository;
		
	}
	
	public Match creatMatch(Match match) {
		return matchRepository.save(match);
	}
	
	public Match updateMatch(Match match) {
		return matchRepository.save(match);
	}

	public  Match findonematch(Long id) {
		Optional <Match> optionalmatch = matchRepository.findById(id);
		if (optionalmatch.isPresent()) {
			return optionalmatch.get();
		}
		else {
			return null;
		}
	}

	public List<Match> findallmatches(){
		return matchRepository.findAll();
	}
	
	public void deletematch(Long id) {
		matchRepository.deleteById(id);
	}

}
