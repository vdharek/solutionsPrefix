package com.solutionsPrefix.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.solutionsPrefix.DAO.ClientsDAO;
import com.solutionsPrefix.entity.Clients;

@Controller
@RequestMapping("/clients")
public class ClientsController {

	// need to inject the customer dao
	@Autowired
	private ClientsDAO clientsDAO;
	
	@RequestMapping("/list")
	public String listClients(Model theModel) {
		
		// get customer from the dao
		List<Clients> theClients = clientsDAO.getClients();
		
		// add the customer to the model
		theModel.addAttribute("clientsModel", theClients);
		
		return "list-clients";
	}
	
}
