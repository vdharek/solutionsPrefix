package com.solutionsPrefix.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.solutionsPrefix.DAO.ClientsDAO;
import com.solutionsPrefix.entity.Clients;
import com.solutionsPrefix.service.ClientService;

@Controller
@RequestMapping("/clients")
public class ClientsController {

	// need to inject the customer dao
	@Autowired
	private ClientService clientsService;
	
	@GetMapping("/list")
	public String listClients(Model theModel) {
		
		// get customer from the dao
		List<Clients> theClients = clientsService.getClients();
		
		// add the customer to the model
		theModel.addAttribute("clientsModel", theClients);
		
		return "list-clients";
	}
	
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {
		
		// create model attribute for binding
		Clients theClient = new Clients();
		
		theModel.addAttribute("client", theClient);
		
		return "client-form";
	}
	
	@PostMapping("/saveClient")
	public String saveClient(@ModelAttribute("client") Clients theClients) {
		
		// Save the client
		clientsService.saveClient(theClients);
		
		return "redirect:/clients/list";
	}
}
