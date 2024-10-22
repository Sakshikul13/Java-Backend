package com.falsk.rps;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin    //
public class ScoreController {
	
	static Score score=new Score(30,20,10);
	
	@GetMapping("/health-check")   //restfulAPI OR ENDPOINT
	public String getHealthCheck() {
		return "SNAFU!";
	}
	
	//in JSON
	@GetMapping("/score")
	public Score getScore() {
		return score;
	}
	@GetMapping("/score/{winslossesorties}")   //pass a variable wins or losses and compare it to below pathVariable and match it
	public int getWinsLossesOrTies(@PathVariable String winslossesorties) {
		if(winslossesorties.equalsIgnoreCase("wins")) {
			return score.wins;
		}
		if(winslossesorties.equalsIgnoreCase("losses")) {
			return score.losses;
		}
	    return score.ties;
		
	}
	
	//invoke post mappings using curl or postman
	@PostMapping("/score/wins")
	public Score increaseWins() {
		score.wins++;
		return score;
	}
	@PostMapping("/score/losses")
	public Score increaseLosses() {
		score.losses++;
		return score;
	}
	@PostMapping("/score/ties")
	public Score increaseTies() {
		score.ties++;
		return score;
	}
	
	@PatchMapping("/score/wins")
	public Score increaseWinsByValue(@RequestParam(name="new-value")int newValue) {
		score.wins+=newValue;
		return score;
	}
	@PatchMapping("/score/losses")
	public Score increaseLossesByValue(@RequestParam(name="new-value")int newValue) {
		score.losses+=newValue;
		return score;
	}
	@PatchMapping("/score/ties")
	public Score increaseTiesByValue(@RequestParam(name="new-value")int newValue) {
		score.ties+=newValue;
		return score;
	}
	
	//send JSON data in body section in postman
	@PutMapping("/score")
	public Score replaceScore(@RequestBody Score newScore) {
		score=newScore;
		return score;
	}
	
	@DeleteMapping("/score")
	public void deleteScore() {
		score=null;
	}
	/*
	@GetMapping("/score/wins")
	public int getWins() {
		return score.wins;
	}
	@GetMapping("/score/losses")
	public int getLosses() {
		return score.losses;
	}
	@GetMapping("/score/ties")
	public int getTies() {
		return score.ties;
	}
	*/

}
