package com.solutionsPrefix.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/clients")
public class ClientsController {

	@RequestMapping("/list")
	public String listClients(Model theModel) {
		return "list-clients";
	}
	
}
