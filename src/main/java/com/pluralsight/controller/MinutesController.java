package com.pluralsight.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pluralsight.model.Exercise;
//import com.pluralsight.model.Exericse;

@Controller
public class MinutesController {
	
	@RequestMapping(value="/addMinutes")
 public String addMinutes(@ModelAttribute("exercise")Exercise exercise){
	 
	 System.out.println("excercise:"+exercise.getMinutes());
	 return "addMinutes";
 }
	
	
	
}
