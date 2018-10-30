package com.pluralsight.controller;

import org.json.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.pluralsight.connection.DatabaseConnection;
import com.pluralsight.model.Person;

	@Controller
	public class SpringMVCController {

	@RequestMapping(value = "/")
	public String sayHello(Model model) {
		
		return "index";
	}

	@RequestMapping(value = "/updateTrackerDetails", method = RequestMethod.POST)
	@ResponseBody
	public String updateTrackerDetails(@RequestBody String json) throws Exception {
	System.out.println("incoming jsonnnnn from ui" + json);
		ObjectMapper mapper = new ObjectMapper();
		Person requesValue = mapper.readValue(json, Person.class);
		Person person = new Person();
		person.setName(requesValue.getName());
		person.setDate(requesValue.getDate());
		person.setHours(requesValue.getHours());
		person.setType(requesValue.getType());
		String name=requesValue.getName();
		String date=requesValue.getDate();
		String type=requesValue.getType();
		String hours=requesValue.getHours();
		// person.setLocation(requesValue.getLocation());
		/*System.out.println(requesValue.getName() + "::::::::::::"+requesValue.getDate()+":::"+
		requesValue.getHours()+":::::::::::"+requesValue.getType());*/
		DatabaseConnection.addDetails(name,date,type,hours);
		System.out.println("=========after adding to db=========");
		String viewName = "Success";
		if (viewName.equalsIgnoreCase("Success")) {
			person.setValidation("Success");
		} else {
			person.setValidation("Error");
		}

		return toJson(person);
	}

	private String toJson(Person person) {

		System.out.println("result json" + person);
		ObjectMapper mapper = new ObjectMapper();
		try {
			String value = mapper.writeValueAsString(person);
			// return "["+value+"]";
			System.out.println("========================"+value);
			return value;
		} catch (JsonProcessingException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
	
	@RequestMapping(value = "/displayTrackerDetails", method = RequestMethod.GET)
	@ResponseBody
	public String displayAllRecords(@RequestBody String json) throws Exception {
		System.out.println("incoming request from ui");
		DatabaseConnection conn=new DatabaseConnection();
	JSONArray res=	conn.displayAllDetails();
	System.out.println("=========="+res);
		//ObjectMapper mapper = new ObjectMapper();
		//Person requesValue = mapper.readValue(json, Person.class);
		
	//	DatabaseConnection.addDetails(name,date,type,hours);
		/*System.out.println("=========after adding to db=========");
		String viewName = "Success";
		if (viewName.equalsIgnoreCase("Success")) {
			person.setValidation("Success");
		} else {
			person.setValidation("Error");
		}*/

		return res.toString();
	}

}