package com.solutionsPrefix.controller;

import java.util.logging.Logger;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.solutionsPrefix.entity.User;
import com.solutionsPrefix.service.UserService;
import com.solutionsPrefix.solutionUser.PrefixUser;

@Controller
@RequestMapping("/register")
public class RegistrationController {

	@Autowired
	private UserService userService;
	
	private Logger logger = Logger.getLogger(getClass().getName());
	
	@InitBinder
	public void initBinder(WebDataBinder dataBinder) {
		
		StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);  
		
		dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
	}
	
	@GetMapping("/showRegistrationForm")
	public String showRegistrationForm(Model theModel) {
		
		theModel.addAttribute("prefixUser", new PrefixUser());
		
		return "registration-form";
	}
	
	@PostMapping("/processRegistrationForm")
	public String processForm(
			@Valid @ModelAttribute ("prefixUser") PrefixUser thePrefixUser,
			BindingResult theBindingResult,
			Model theModel) {
		
		String userName = thePrefixUser.getUserName();
		logger.info("Processing the registration form : " +userName);
		
		if(theBindingResult.hasErrors()) {
			return "registration-from";
		}
		
		// Checking if user already exists
		User existing = userService.findByUserName(userName);
		if(existing != null) {
			theModel.addAttribute("prefixUser", new PrefixUser());
			theModel.addAttribute("registrationError", "User already exists");
			
			logger.warning("User name already exists.");
			return "registration-form";		
		}
		
		userService.save(thePrefixUser);
		
		logger.info("User successfully added : "+userName);
		return "registration-confirmation";
	}
	
}
