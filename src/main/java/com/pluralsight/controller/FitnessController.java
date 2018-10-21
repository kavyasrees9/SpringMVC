package com.pluralsight.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FitnessController {

	
	//@RequestMapping(value="/updateDetails")
	@RequestMapping(value = "/updateDetails", method = RequestMethod.GET)
	public String updateExercise(Model model){
		System.out.println("tracker model needs to be build now");
		//tracker.setName("");
		//tracker.setMinutes("");
		//tracker.setDate(Date.valueOf(""));
	//	tracker.setType("");
		
	//	model.addAttribute("updateDetails", "I love you bodi..");
		
		return "updateDetails";
	}
	
}
